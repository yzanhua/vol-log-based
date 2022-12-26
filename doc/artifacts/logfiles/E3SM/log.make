make  all-recursive
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO'
Making all in src
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src'
m4 -I. -I../m4 e3sm_io_profile.m4 >e3sm_io_profile.cpp
m4 -I. -I../m4 e3sm_io_profile_timers.m4 >e3sm_io_profile_timers.cpp
m4 -I. -I../m4 e3sm_io_profile.m4h >e3sm_io_profile.hpp
make  all-recursive
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src'
Making all in drivers
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src/drivers'
  CXX      e3sm_io_driver.lo
  CXX      e3sm_io_driver_hdf5.lo
  CXX      e3sm_io_driver_h5blob.lo
  CXX      e3sm_io_driver_hdf5_md.lo
  CC       blob_ncmpio.lo
  CXX      e3sm_io_driver_pnc.lo
  CXXLD    libe3sm_io_drivers.la
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src/drivers'
Making all in cases
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src/cases'
  CXX      e3sm_io_case.lo
  CXX      header_def_F_case.lo
  CXX      header_def_G_case.lo
  CXX      header_def_I_case.lo
  CXX      header_inq_F_case.lo
  CXX      header_inq_G_case.lo
  CXX      header_inq_I_case.lo
  CXX      var_rd_G_case.lo
  CXX      var_rd_F_case.lo
  CXX      var_wr_case.lo
  CXX      var_rd_case.lo
  CXX      scorpio_wrapper.lo
  CXX      report_timing.lo
  CXX      utils.lo
  CXXLD    libe3sm_io_cases.la
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src/cases'
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src'
  CC       e3sm_io.o
  CXX      e3sm_io_core.o
  CXX      read_decomp.o
  CC       calc_metadata.o
  CXX      e3sm_io_profile.o
  CXX      e3sm_io_profile_timers.o
e3sm_io.c: In function 'main':
e3sm_io.c:324:2: warning: #warning TODO: HDF5 multi-dataset APIs do not support writing multiple time steps at a time. Setting flush freq to 1. [-Wcpp]
  324 | #warning TODO: HDF5 multi-dataset APIs do not support writing multiple time steps at a time. Setting flush freq to 1.
      |  ^~~~~~~
  CXXLD    e3sm_io
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/src'
Making all in datasets
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/datasets'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/datasets'
Making all in utils
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/utils'
make  all-am
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/utils'
  CXX      datstat.o
  CXX      dat2decomp.o
  CXX      decomp_copy.o
  CC       dat2nc.o
  CC       pnetcdf_blob_replay.o
  CCLD     dat2nc
  CCLD     pnetcdf_blob_replay
  CXXLD    datstat
  CXXLD    decomp_copy
  CXXLD    dat2decomp
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/utils'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/utils'
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO'
