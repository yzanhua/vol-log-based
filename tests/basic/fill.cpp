/*
 *  Copyright (C) 2022, Northwestern University and Argonne National Laboratory
 *  See COPYRIGHT notice in top-level directory.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h> /* memset() */
#include <mpi.h>
#include <hdf5.h>

#include "H5VL_log.h"
#include "testutils.hpp"

#define FILL_VAL 123456789

int main (int argc, char **argv) {
    herr_t err = 0;
    int nerrs  = 0;
    int i;
    int rank, np;
    const char *file_name;
    hid_t fid      = -1;  // File ID
    hid_t did      = -1;  // Dataset ID
    hid_t sid      = -1;  // Dataset space ID
    hid_t msid     = -1;  // Memory space ID
    hid_t faplid   = -1;
    hid_t dcplid   = -1;  // Dataset creation property;
    hid_t log_vlid = H5I_INVALID_HID;  // Logvol ID
    hsize_t dims[2];
    hsize_t start[2], count[2];
    int *buf = NULL;
    vol_env env;

    int mpi_required;
    MPI_Init_thread(&argc, &argv, MPI_THREAD_MULTIPLE, &mpi_required);

    MPI_Comm_size (MPI_COMM_WORLD, &np);
    MPI_Comm_rank (MPI_COMM_WORLD, &rank);

    if (argc > 2) {
        if (!rank) printf ("Usage: %s [filename]\n", argv[0]);
        MPI_Finalize ();
        return 1;
    } else if (argc > 1) {
        file_name = argv[1];
    } else {
        file_name = "fill.h5";
    }

    /* check VOL related environment variables */
    check_env(&env);
    SHOW_TEST_INFO ("Blocking read")

    faplid = H5Pcreate (H5P_FILE_ACCESS);
    CHECK_ERR (faplid)
    // MPI and collective metadata is required by LOG VOL
    err = H5Pset_fapl_mpio (faplid, MPI_COMM_WORLD, MPI_INFO_NULL);
    CHECK_ERR (err)
    err = H5Pset_all_coll_metadata_ops (faplid, 1);
    CHECK_ERR (err)

    if (env.native_only == 0 && env.connector == 0) {
        // Register LOG VOL plugin
        log_vlid = H5VLregister_connector (&H5VL_log_g, H5P_DEFAULT);
        CHECK_ERR (log_vlid)
        err = H5Pset_vol (faplid, log_vlid, NULL);
        CHECK_ERR (err)
    }

    // Create file
    fid = H5Fcreate (file_name, H5F_ACC_TRUNC, H5P_DEFAULT, faplid);
    CHECK_ID (fid)

    // Allocate buffer
    buf = new int[np * 2];

    // Create datasets
    dims[0] = np;
    dims[1] = np * 2;
    sid     = H5Screate_simple (2, dims, dims);
    CHECK_ID (sid)

    dcplid = H5Pcreate (H5P_DATASET_CREATE);
    CHECK_ID (dcplid)

    buf[0] = FILL_VAL;
    err    = H5Pset_fill_value (dcplid, H5T_STD_I32LE, buf);

    did = H5Dcreate2 (fid, "D", H5T_STD_I32LE, sid, H5P_DEFAULT, dcplid, H5P_DEFAULT);
    CHECK_ERR (did)

    // Write first half
    for (i = 0; i < np; i++) { buf[i] = rank + i + 1; }
    start[0] = rank;
    start[1] = 0;
    count[0] = 1;
    count[1] = np;
    err      = H5Sselect_hyperslab (sid, H5S_SELECT_SET, start, NULL, count, NULL);
    CHECK_ERR (err)
    dims[1] = np;
    msid = H5Screate_simple (1, dims + 1, dims + 1);
    CHECK_ERR (msid);
    err = H5Dwrite (did, H5T_NATIVE_INT, msid, sid, H5P_DEFAULT, buf);
    CHECK_ERR (err)
    err = H5Sclose (msid);
    CHECK_ERR (err)

    // Flush
    err = H5Fflush (fid, H5F_SCOPE_LOCAL);
    CHECK_ERR (err)

    // Read rows
    start[0] = rank;
    start[1] = 0;
    count[0] = 1;
    count[1] = np * 2;
    err      = H5Sselect_hyperslab (sid, H5S_SELECT_SET, start, NULL, count, NULL);
    CHECK_ERR (err)
    dims[1] = np * 2;
    msid = H5Screate_simple (1, dims + 1, dims + 1);
    CHECK_ERR (msid);
    err = H5Dread (did, H5T_NATIVE_INT, msid, sid, H5P_DEFAULT, buf);
    CHECK_ERR (err)
    for (i = 0; i < np; i++) { EXP_VAL_EX (buf[i], (rank + i + 1), "buf[" << i << "]") }
    for (; i < np * 2; i++) { EXP_VAL_EX (buf[i], (FILL_VAL), "buf[" << i << "]") }

    err = H5Dclose (did);
    CHECK_ERR (err)
    did = -1;
    err = H5Fclose (fid);
    CHECK_ERR (err)
    fid = -1;

    // Open file
    fid = H5Fopen (file_name, H5F_ACC_RDONLY, faplid);
    CHECK_ID (fid)

    memset (buf, 0, sizeof (int) * np);

    // Open dataset
    did = H5Dopen2 (fid, "D", H5P_DEFAULT);
    CHECK_ID (did)

    // Read rows
    start[0] = rank;
    start[1] = 0;
    count[0] = 1;
    count[1] = np * 2;
    err      = H5Sselect_hyperslab (sid, H5S_SELECT_SET, start, NULL, count, NULL);
    CHECK_ERR (err)
    err = H5Dread (did, H5T_NATIVE_INT, msid, sid, H5P_DEFAULT, buf);
    CHECK_ERR (err)
    for (i = 0; i < np; i++) { EXP_VAL_EX (buf[i], (rank + i + 1), "buf[" << i << "]") }
    for (; i < np * 2; i++) { EXP_VAL_EX (buf[i], (FILL_VAL), "buf[" << i << "]") }

    err = H5Sclose (msid);
    CHECK_ERR (err)
    msid = -1;
    err  = H5Sclose (sid);
    CHECK_ERR (err)
    sid = -1;
    err = H5Dclose (did);
    CHECK_ERR (err)
    did = -1;
    err = H5Fclose (fid);
    CHECK_ERR (err)
    fid = -1;

    err = H5Pclose (faplid);
    CHECK_ERR (err)
    faplid = -1;

err_out:
    if (msid >= 0) H5Sclose (msid);
    if (sid >= 0) H5Sclose (sid);
    if (did >= 0) H5Dclose (did);
    if (fid >= 0) H5Fclose (fid);
    if (faplid >= 0) H5Pclose (faplid);
    if (log_vlid != H5I_INVALID_HID) H5VLclose (log_vlid);

    SHOW_TEST_RESULT

    MPI_Finalize ();

    if (buf) { delete[] buf; }

    return (nerrs > 0);
}
