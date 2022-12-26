make  all-recursive
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based'
Making all in src
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/src'
m4  -I../m4 -I../src H5VL_logi_profiling.m4h >H5VL_logi_profiling.hpp
make  all-am
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/src'
  CXX      H5VL_log_att.lo
  CXX      H5VL_log_atti.lo
  CXX      H5VL_log_dataset.lo
  CXX      H5VL_log_blob.lo
  CXX      H5VL_log_datatype.lo
  CXX      H5VL_log_dataseti.lo
  CXX      H5VL_log_datatypei.lo
  CXX      H5VL_log_file.lo
  CXX      H5VL_log_filei.lo
  CXX      H5VL_log_filei_meta.lo
  CXX      H5VL_log_group.lo
  CXX      H5VL_log_info.lo
  CXX      H5VL_log_introspect.lo
  CXX      H5VL_log_link.lo
  CXX      H5VL_log_linki.lo
  CXX      H5VL_log_main.lo
  CXX      H5VL_log_obj.lo
  CXX      H5VL_log_obji.lo
  CXX      H5VL_log_req.lo
  CXX      H5VL_log_reqi.lo
  CXX      H5VL_log_token.lo
  CXX      H5VL_log_wrap.lo
  CXX      H5VL_log.lo
  CXX      H5VL_logi_dataspace.lo
  CXX      H5VL_logi_err.lo
  CXX      H5VL_logi_filter.lo
  CXX      H5VL_logi_filter_deflate.lo
  CXX      H5VL_logi_idx.lo
  CXX      H5VL_logi_idx_list.lo
  CXX      H5VL_logi_idx_compact.lo
  CXX      H5VL_logi_mem.lo
  CXX      H5VL_logi_meta.lo
  CXX      H5VL_logi_nb.lo
  CXX      H5VL_logi_util.lo
  CXX      H5VL_logi_wrapper.lo
  CXX      H5VL_logi_zip.lo
  CXXLD    libH5VL_log.la
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/src'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/src'
Making all in .
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based'
Making all in tests
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests'
Making all in basic
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/basic'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/basic'
Making all in dynamic
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/dynamic'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/dynamic'
Making all in testcases
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/testcases'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/testcases'
Making all in external
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/external'
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/external'
make[4]: Nothing to be done for 'all-am'.
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/external'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/external'
Making all in passthru
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/passthru'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/passthru'
Making all in read_regular
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/read_regular'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests/read_regular'
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/tests'
Making all in examples
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/examples'
Making all in hdf5_examples
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/examples/hdf5_examples'
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_crtdat.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_crtatt.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_crtgrp.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_crtgrpar.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_crtgrpd.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_interm_group.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_rdwt.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_write.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_read.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_select.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_subset.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/h5_attribute.c
wget -qc https://raw.githubusercontent.com/HDFGroup/hdf5/hdf5-1_13_0/examples/ph5example.c
if [ -f ./h5_select.patch.hdf5-1_13_0 ]; then patch -st h5_select.c < ./h5_select.patch.hdf5-1_13_0; fi
if [ -f ./h5_rdwt.patch.hdf5-1_13_0 ]; then patch -st h5_rdwt.c < ./h5_rdwt.patch.hdf5-1_13_0; fi
if [ -f ./h5_read.patch.hdf5-1_13_0 ]; then patch -st h5_read.c < ./h5_read.patch.hdf5-1_13_0; fi
if [ -f ./h5_crtgrpar.patch.hdf5-1_13_0 ]; then patch -st h5_crtgrpar.c < ./h5_crtgrpar.patch.hdf5-1_13_0; fi
if [ -f ./h5_interm_group.patch.hdf5-1_13_0 ]; then patch -st h5_interm_group.c < ./h5_interm_group.patch.hdf5-1_13_0; fi
if [ -f ./h5_crtatt.patch.hdf5-1_13_0 ]; then patch -st h5_crtatt.c < ./h5_crtatt.patch.hdf5-1_13_0; fi
if [ -f ./ph5example.patch.hdf5-1_13_0 ]; then patch -st ph5example.c < ./ph5example.patch.hdf5-1_13_0; fi
if [ -f ./h5_write.patch.hdf5-1_13_0 ]; then patch -st h5_write.c < ./h5_write.patch.hdf5-1_13_0; fi
if [ -f ./h5_crtgrpd.patch.hdf5-1_13_0 ]; then patch -st h5_crtgrpd.c < ./h5_crtgrpd.patch.hdf5-1_13_0; fi
if [ -f ./h5_subset.patch.hdf5-1_13_0 ]; then patch -st h5_subset.c < ./h5_subset.patch.hdf5-1_13_0; fi
if [ -f ./h5_attribute.patch.hdf5-1_13_0 ]; then patch -st h5_attribute.c < ./h5_attribute.patch.hdf5-1_13_0; fi
if [ -f ./h5_crtgrp.patch.hdf5-1_13_0 ]; then patch -st h5_crtgrp.c < ./h5_crtgrp.patch.hdf5-1_13_0; fi
if [ -f ./h5_crtdat.patch.hdf5-1_13_0 ]; then patch -st h5_crtdat.c < ./h5_crtdat.patch.hdf5-1_13_0; fi
make  all-am
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/examples/hdf5_examples'
make[4]: Nothing to be done for 'all-am'.
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/examples/hdf5_examples'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/examples/hdf5_examples'
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/examples'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/examples'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/examples'
Making all in utils
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/utils'
Making all in h5lreplay
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/utils/h5lreplay'
  CXX      h5lreplay.o
  CXX      h5lreplay_data.o
  CXX      h5lreplay_copy.o
  CXX      h5lreplay_meta.o
  CXXLD    h5lreplay
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/utils/h5lreplay'
Making all in h5ldump
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/utils/h5ldump'
  CXX      h5ldump.o
  CXX      h5ldump_meta.o
  CXX      h5ldump_visit.o
  CXXLD    h5ldump
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/utils/h5ldump'
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/utils'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/utils'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/utils'
Making all in doc
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/vol-log-based/doc'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based/doc'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/vol-log-based'
