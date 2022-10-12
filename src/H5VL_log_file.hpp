/*
 *  Copyright (C) 2022, Northwestern University and Argonne National Laboratory
 *  See COPYRIGHT notice in top-level directory.
 */
/* $Id$ */

#pragma once

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <array>
#include <string>
#include <unordered_map>
//
#include <mpi.h>
#include <sys/stat.h>
//
#include "H5VL_log.h"
#include "H5VL_log_dataset.hpp"
#include "H5VL_log_obj.hpp"
#include "H5VL_logi.hpp"
#include "H5VL_logi_idx.hpp"
#include "H5VL_logi_nb.hpp"

typedef struct H5VL_log_contig_buffer_t {
    char *begin, *end;
    char *cur;
} H5VL_log_contig_buffer_t;

typedef struct H5VL_log_cord_t {
    MPI_Offset cord[H5S_MAX_RANK];
} H5VL_log_cord_t;

using stcrtstat = struct stat;

typedef struct H5VL_log_file_shared_t {
    int ndset;   // # user datasets, used to assign ID
    int nldset;  // # data datasets
    int nmdset;  // # metadata datasets
    int refcnt;  // Number of H5VL_log_file_t objects holding reference to this shared obj
    H5VL_log_file_shared_t();
    void inc_refcnt();
    void dec_refcnt(ino_t ino);
} H5VL_log_file_shared_t;

/* The log VOL file object */
typedef struct H5VL_log_file_t : H5VL_log_obj_t {
    int rank;       // Global rank of current process
    int np;         // Number of processes
    MPI_Comm comm;  // Global communicator
    MPI_Info info;  // Main file info

    /* Subfiling parameters */
    // Group is a set of processes sharing the same subfile or lustre stripe
    int group_id;         // ID of the group
    int group_rank;       // Rank in the group
    int group_np;         // Number of processes in the group
    int ngroup;           // Number of groups. NOTE: This value is only valid when
                          // H5VL_FILEI_CONFIG_SUBFILING is set in config
    int prev_rank;        // We only start writing after prev_rank finishes writing
    int next_rank;        // We have to notify next_rank to start writing after we finish
    int target_ost;       // What OST should we write to in aligned data layout
    size_t ssize;         // Lustre striping size
    int scount;           // Lustre stripping count
    MPI_Comm group_comm;  // Communicator among the processes sharing the same subfile

    int refcnt;     // Number of VOL objects holding reference to the file
    bool closing;   // If we are closing the file
    unsigned flag;  // HDF5 file creation/opening flag

    hid_t dxplid;   // Copy of dxpl passed from the application
    hid_t ufaplid;  // Copy of fapl passed to the underlying VOL

    void *lgp;   // Log group
    H5VL_log_file_shared_t *shared;

    MPI_File
        fh;     // MPI file handle to the target file for data and metadata (master file or subfile)
    int fd;     // POSIX fd to the target file for data and metadata (master file or subfile), only
                // used in aligned write
    void *sfp;  // Under VOL object of the subfile
    decltype (stcrtstat::st_ino) ino;  // Inode number, used to detect duplicate file open
    bool has_ino;                      // If ino is valid

    std::vector<H5VL_log_wreq_t *> wreqs;  // Queued write reqs
    int nflushed;  // # entry in wreqs with their data already flushed (metadata haven't)
    std::vector<H5VL_log_rreq_t *> rreqs;

    std::vector<H5VL_log_merged_wreq_t *> mreqs;     // Merged request for every dataset
    std::vector<H5VL_log_dset_info_t *> dsets_info;  // Opened datasets

    ssize_t bsize;  // Current data buffer size allocated
    size_t bused;   // Current data buffer size used

    ssize_t mbuf_size;  // Max buffer size allowed for indexing

    std::string name;     // File name
    std::string subname;  // Name of the target subfile

    // H5VL_log_buffer_pool_t data_buf;
    // H5VL_log_contig_buffer_t meta_buf;
    // H5VL_log_meta_cache_t meta_cache;

    // Write metadata handling
    std::unordered_map<H5VL_log_wreq_t, H5VL_log_wreq_t *>
        wreq_hash;  // Hash table for deduplication
    MPI_Offset mdsize;
    char *zbuf;     // Buffer for metadata compression
    size_t zbsize;  // size of zbuf
    // std::vector<int> meta_ref;

    // std::vector<int> lut;
    H5VL_logi_idx_t *idx;  // Index of data, for reading
    bool idxvalid;         // Is index up to date
    bool metadirty;        // Is there pending metadata to flush

    // Configuration flag
    int config;  // Config flags
    H5VL_log_idx_type_t
        index_type;  // What index to use for metadata entries (only used to handle read operations)

    bool is_log_based_file;  // indicate if a file is a regular file (false) or a log-based file
                             // (false)

#ifdef ENABLE_PROFILING
#ifndef REPLAY_BUILD
    //#pragma message ( "C Preprocessor got here!" )
    double tlocal[H5VL_LOG_NTIMER];
    double clocal[H5VL_LOG_NTIMER];
#endif
#endif

    H5VL_log_file_t ();
    H5VL_log_file_t (hid_t uvlid);
    H5VL_log_file_t (void *uo, hid_t uvlid);
    //~H5VL_log_file_t ();
} H5VL_log_file_t;

typedef struct H5VL_log_buffer_block_t {
    char *begin, *end;
    char *cur;
    H5VL_log_buffer_block_t *next;
} H5VL_log_buffer_block_t;

typedef struct H5VL_log_buffer_pool_t {
    ssize_t bsize;
    int inf;
    H5VL_log_buffer_block_t *head;
    H5VL_log_buffer_block_t *free_blocks;
} H5VL_log_buffer_pool_t;

void *H5VL_log_file_create (
    const char *name, unsigned flags, hid_t fcpl_id, hid_t fapl_id, hid_t dxpl_id, void **req);
void *H5VL_log_file_open (
    const char *name, unsigned flags, hid_t fapl_id, hid_t dxpl_id, void **req);
herr_t H5VL_log_file_get (void *file, H5VL_file_get_args_t *args, hid_t dxpl_id, void **req);
herr_t H5VL_log_file_specific (void *file,
                               H5VL_file_specific_args_t *args,
                               hid_t dxpl_id,
                               void **req);
herr_t H5VL_log_file_optional (void *file, H5VL_optional_args_t *args, hid_t dxpl_id, void **req);
herr_t H5VL_log_file_close (void *file, hid_t dxpl_id, void **req);
