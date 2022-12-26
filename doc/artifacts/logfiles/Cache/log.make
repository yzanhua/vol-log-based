[  2%] Building C object src/CMakeFiles/cache_new_h5api.dir/cache_new_h5api.c.o
[  7%] Building C object src/CMakeFiles/h5cache_vol.dir/H5VLcache_ext.c.o
[  7%] Building C object src/CMakeFiles/h5cache_vol.dir/cache_utils.c.o
[ 12%] Building C object src/CMakeFiles/h5cache_vol.dir/H5LS_SSD.c.o
[ 12%] Building C object src/CMakeFiles/h5cache_vol.dir/H5LS.c.o
[ 15%] Building C object src/CMakeFiles/h5cache_vol.dir/__/utils/debug.c.o
[ 17%] Building C object src/CMakeFiles/h5cache_vol.dir/H5LS_RAM.c.o
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:580:9: warning: initialization of 'herr_t (*)(const void *, uint64_t *)' {aka 'int (*)(const void *, long unsigned int *)'} from incompatible pointer type 'herr_t (*)(const void *, unsigned int *)' {aka 'int (*)(const void *, unsigned int *)'} [-Wincompatible-pointer-types]
  580 |         H5VL_cache_ext_introspect_get_cap_flags,
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:580:9: note: (near initialization for 'H5VL_cache_ext_g.introspect_cls.get_cap_flags')
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c: In function 'H5VL_cache_ext_dataset_prefetch_async':
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:2038:55: warning: passing argument 8 of 'H5VLdataset_read' from incompatible pointer type [-Wincompatible-pointer-types]
 2038 |                                    &fs_cpy, plist_id, &p, &r->req);
      |                                                       ^~
      |                                                       |
      |                                                       char **
In file included from /global/u2/z/zanhua/VOLS/HDF5/include/hdf5.h:55,
                 from /global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:28:
/global/u2/z/zanhua/VOLS/HDF5/include/H5VLconnector_passthru.h:111:99: note: expected 'void **' but argument is of type 'char **'
  111 |                                hid_t mem_space_id[], hid_t file_space_id[], hid_t plist_id, void *buf[],
      |                                                                                             ~~~~~~^~~~~
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c: In function 'H5VL_cache_ext_introspect_get_cap_flags':
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:5093:64: warning: passing argument 3 of 'H5VLintrospect_get_cap_flags' from incompatible pointer type [-Wincompatible-pointer-types]
 5093 |                                            info->under_vol_id, cap_flags);
      |                                                                ^~~~~~~~~
      |                                                                |
      |                                                                unsigned int *
In file included from /global/u2/z/zanhua/VOLS/HDF5/include/hdf5.h:55,
                 from /global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:28:
/global/u2/z/zanhua/VOLS/HDF5/include/H5VLconnector_passthru.h:196:92: note: expected 'uint64_t *' {aka 'long unsigned int *'} but argument is of type 'unsigned int *'
  196 | H5_DLL herr_t H5VLintrospect_get_cap_flags(const void *info, hid_t connector_id, uint64_t *cap_flags);
      |                                                                                  ~~~~~~~~~~^~~~~~~~~
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c: In function 'flush_data_from_local_storage':
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:6151:32: warning: passing argument 8 of 'H5VLdataset_write' from incompatible pointer type [-Wincompatible-pointer-types]
 6151 |       task->xfer_plist_id, task->buf, &task->req);
      |                            ~~~~^~~~~
      |                                |
      |                                void **
In file included from /global/u2/z/zanhua/VOLS/HDF5/include/hdf5.h:55,
                 from /global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:28:
/global/u2/z/zanhua/VOLS/HDF5/include/H5VLconnector_passthru.h:115:45: note: expected 'const void **' but argument is of type 'void **'
  115 |                                 const void *buf[], void **req);
      |                                 ~~~~~~~~~~~~^~~~~
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c: In function 'flush_data_from_global_storage':
/global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:6584:46: warning: passing argument 8 of 'H5VLdataset_write' from incompatible pointer type [-Wincompatible-pointer-types]
 6584 |                                 dxpl_id, task->buf, &task->req);
      |                                          ~~~~^~~~~
      |                                              |
      |                                              void **
In file included from /global/u2/z/zanhua/VOLS/HDF5/include/hdf5.h:55,
                 from /global/u2/z/zanhua/VOLS/Cache/vol-cache/src/H5VLcache_ext.c:28:
/global/u2/z/zanhua/VOLS/HDF5/include/H5VLconnector_passthru.h:115:45: note: expected 'const void **' but argument is of type 'void **'
  115 |                                 const void *buf[], void **req);
      |                                 ~~~~~~~~~~~~^~~~~
[ 20%] Linking C static library libcache_new_h5api.a
[ 20%] Built target cache_new_h5api
[ 23%] Building CXX object tests/CMakeFiles/test_dataset_async_api.exe.dir/test_dataset_async_api.cpp.o
[ 25%] Building CXX object tests/CMakeFiles/test_dataset.exe.dir/test_dataset.cpp.o
[ 28%] Building CXX object tests/CMakeFiles/test_write_multi.exe.dir/test_write_multi.cpp.o
[ 30%] Building CXX object tests/CMakeFiles/test_group.exe.dir/test_group.cpp.o
[ 33%] Building CXX object tests/CMakeFiles/test_file.exe.dir/test_file.cpp.o
[ 35%] Building CXX object benchmarks/CMakeFiles/read_cache.exe.dir/read_cache.cpp.o
[ 38%] Building C object benchmarks/CMakeFiles/read_cache.exe.dir/__/src/cache_utils.c.o
[ 43%] Building CXX object benchmarks/CMakeFiles/read_cache.exe.dir/profiling.cpp.o
[ 43%] Building C object benchmarks/CMakeFiles/read_cache.exe.dir/__/utils/debug.c.o
[ 46%] Building CXX object benchmarks/CMakeFiles/prepare_dataset.exe.dir/prepare_dataset.cpp.o
[ 48%] Building C object benchmarks/CMakeFiles/prepare_dataset.exe.dir/__/utils/debug.c.o
[ 51%] Building CXX object benchmarks/CMakeFiles/prepare_dataset.exe.dir/profiling.cpp.o
[ 53%] Building CXX object benchmarks/CMakeFiles/write.exe.dir/write.cpp.o
[ 58%] Building CXX object benchmarks/CMakeFiles/write_cache.exe.dir/write_cache.cpp.o
[ 58%] Building C object benchmarks/CMakeFiles/prepare_dataset.exe.dir/__/src/cache_utils.c.o
[ 61%] Building C object benchmarks/CMakeFiles/write.exe.dir/__/utils/debug.c.o
[ 64%] Building CXX object benchmarks/CMakeFiles/write.exe.dir/profiling.cpp.o
[ 66%] Linking C shared library libh5cache_vol.so
[ 69%] Building C object benchmarks/CMakeFiles/write.exe.dir/__/src/cache_utils.c.o
[ 71%] Building C object benchmarks/CMakeFiles/write_cache.exe.dir/__/utils/debug.c.o
[ 74%] Building CXX object benchmarks/CMakeFiles/write_cache.exe.dir/profiling.cpp.o
[ 76%] Linking CXX executable test_dataset_async_api.exe
[ 82%] Linking CXX executable test_group.exe
[ 82%] Linking CXX executable test_file.exe
[ 84%] Linking CXX executable test_dataset.exe
[ 87%] Linking CXX executable test_write_multi.exe
[ 87%] Built target h5cache_vol
[ 89%] Building C object benchmarks/CMakeFiles/write_cache.exe.dir/__/src/cache_utils.c.o
[ 89%] Built target test_dataset_async_api.exe
[ 89%] Built target test_group.exe
[ 89%] Built target test_write_multi.exe
[ 89%] Built target test_file.exe
[ 89%] Built target test_dataset.exe
/global/u2/z/zanhua/VOLS/Cache/vol-cache/benchmarks/write_cache.cpp: In function 'double timestamp_s()':
/global/u2/z/zanhua/VOLS/Cache/vol-cache/benchmarks/write_cache.cpp:23:23: warning: no return statement in function returning non-void [-Wreturn-type]
   23 | double timestamp_s() {}
      |                       ^
[ 92%] Linking CXX executable write.exe
[ 94%] Linking CXX executable write_cache.exe
[ 97%] Linking CXX executable prepare_dataset.exe
[ 97%] Built target write.exe
[ 97%] Built target write_cache.exe
[ 97%] Built target prepare_dataset.exe
[100%] Linking CXX executable read_cache.exe
[100%] Built target read_cache.exe
