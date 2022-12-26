Making all in src
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src'
Making all in include
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/include'
make  all-am
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/include'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/include'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/include'
Making all in dispatchers
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/dispatchers'
m4  -DPNETCDF -I../../../pnetcdf-1.12.3/m4 ../../../pnetcdf-1.12.3/src/dispatchers/attr_getput.m4 >attr_getput.c
m4  -DPNETCDF -I../../../pnetcdf-1.12.3/m4 ../../../pnetcdf-1.12.3/src/dispatchers/var_getput.m4 >var_getput.c
make  all-am
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/dispatchers'
  CC       lib_version.lo
  CC       file.lo
  CC       dimension.lo
  CC       variable.lo
  CC       attribute.lo
  CC       error_codes.lo
  CC       attr_getput.lo
  CC       var_getput.lo
  CCLD     libdispatchers.la
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/dispatchers'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/dispatchers'
Making all in drivers
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers'
Making all in include
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/include'
m4  -DPNETCDF -I../../../../pnetcdf-1.12.3/m4 ../../../../pnetcdf-1.12.3/src/drivers/include/ncx_h.m4 >ncx.h
make  all-am
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/include'
make[4]: Nothing to be done for 'all-am'.
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/include'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/include'
Making all in common
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/common'
m4  -DPNETCDF -I../../../../pnetcdf-1.12.3/m4 -DERANGE_FILL ../../../../pnetcdf-1.12.3/src/drivers/common/ncx.m4 >ncx.c
m4  -DPNETCDF -I../../../../pnetcdf-1.12.3/m4 -DERANGE_FILL ../../../../pnetcdf-1.12.3/src/drivers/common/convert_swap.m4 >convert_swap.c
make  all-am
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/common'
  CC       utf8proc.lo
  CC       mem_alloc.lo
  CC       dtype_decode.lo
  CC       create_imaptype.lo
  CC       error_mpi2nc.lo
  CC       check_name.lo
  CC       pack_unpack.lo
  CC       utils.lo
  CC       error_posix2nc.lo
  CC       hash_map.lo
  CC       ncx.lo
  CC       convert_swap.lo
  CCLD     libcommon.la
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/common'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/common'
Making all in ncmpio
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/ncmpio'
m4  -DPNETCDF -I../../../../pnetcdf-1.12.3/m4 -DERANGE_FILL ../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_getput.m4 >ncmpio_getput.c
m4  -DPNETCDF -I../../../../pnetcdf-1.12.3/m4 -DERANGE_FILL ../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_i_getput.m4 >ncmpio_i_getput.c
m4  -DPNETCDF -I../../../../pnetcdf-1.12.3/m4 -DERANGE_FILL ../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_varn.m4 >ncmpio_varn.c
m4  -DPNETCDF -I../../../../pnetcdf-1.12.3/m4 -DERANGE_FILL ../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_i_varn.m4 >ncmpio_i_varn.c
m4  -DPNETCDF -I../../../../pnetcdf-1.12.3/m4 -DERANGE_FILL ../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_attr.m4 >ncmpio_attr.c
make  all-am
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/ncmpio'
  CC       ncmpio_driver.lo
  CC       ncmpio_create.lo
  CC       ncmpio_open.lo
  CC       ncmpio_enddef.lo
  CC       ncmpio_close.lo
  CC       ncmpio_sync.lo
  CC       ncmpio_file_misc.lo
  CC       ncmpio_header_get.lo
  CC       ncmpio_header_put.lo
  CC       ncmpio_dim.lo
  CC       ncmpio_var.lo
  CC       ncmpio_bput.lo
  CC       ncmpio_filetype.lo
  CC       ncmpio_wait.lo
  CC       ncmpio_vard.lo
  CC       ncmpio_fill.lo
../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_filetype.c: In function 'type_create_subarray64.constprop':
../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_filetype.c:154:21: warning: 'MPI_Type_create_subarray' reading 4 bytes from a region of size 0 [-Wstringop-overread]
  154 |         mpireturn = MPI_Type_create_subarray(ndims, sizes, subsizes, starts,
      |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  155 |                                              order, oldtype, newtype);
      |                                              ~~~~~~~~~~~~~~~~~~~~~~~~
../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_filetype.c:154:21: note: referencing argument 3 of type 'const int *'
../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_filetype.c:154:21: warning: 'MPI_Type_create_subarray' reading 4 bytes from a region of size 0 [-Wstringop-overread]
../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_filetype.c:154:21: note: referencing argument 4 of type 'const int *'
In file included from ../../../../pnetcdf-1.12.3/src/drivers/ncmpio/ncmpio_filetype.c:18:
/opt/cray/pe/mpich/8.1.22/ofi/gnu/9.1/include/mpi.h:1362:5: note: in a call to function 'MPI_Type_create_subarray'
 1362 | int MPI_Type_create_subarray(int ndims, const int array_of_sizes[],
      |     ^~~~~~~~~~~~~~~~~~~~~~~~
  CC       ncmpio_util.lo
  CC       ncmpio_hash_func.lo
  CC       ncmpio_file_io.lo
  CC       ncmpio_getput.lo
  CC       ncmpio_i_getput.lo
  CC       ncmpio_varn.lo
  CC       ncmpio_i_varn.lo
  CC       ncmpio_attr.lo
  CCLD     libncmpio.la
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/ncmpio'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers/ncmpio'
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/drivers'
Making all in binding
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding'
Making all in cxx
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/cxx'
cat ../../../../pnetcdf-1.12.3/src/binding/cxx/pnetcdf.in >pnetcdf
set -e; for i in ncmpi_notyet.h ncmpiCheck.h ncmpiType.h ncmpiAtt.h ncmpiEnumType.h ncmpiGroupAtt.h ncmpiGroup.h ncmpiByte.h ncmpiChar.h ncmpiCompoundType.h ncmpiDouble.h ncmpiFloat.h ncmpiInt.h ncmpiInt64.h ncmpiOpaqueType.h ncmpiShort.h ncmpiUbyte.h ncmpiUint.h ncmpiUint64.h ncmpiUshort.h ncmpiException.h ncmpiDim.h ncmpiFile.h ncmpiVarAtt.h ncmpiVar.h ncmpiVlenType.h; do ( \
/usr/bin/sed -e '/#ifndef/d' -e '/#define/d' -e '/#endif/d' -e '/#include/d' ../../../../pnetcdf-1.12.3/src/binding/cxx/$i >> pnetcdf ; \
) ; done
make  all-am
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/cxx'
  CXX      ncmpi_notyet.lo
  CXX      ncmpiCheck.lo
  CXX      ncmpiType.lo
  CXX      ncmpiAtt.lo
  CXX      ncmpiEnumType.lo
  CXX      ncmpiGroupAtt.lo
  CXX      ncmpiGroup.lo
  CXX      ncmpiByte.lo
  CXX      ncmpiChar.lo
  CXX      ncmpiCompoundType.lo
  CXX      ncmpiDouble.lo
  CXX      ncmpiFloat.lo
  CXX      ncmpiInt.lo
  CXX      ncmpiInt64.lo
  CXX      ncmpiOpaqueType.lo
  CXX      ncmpiShort.lo
  CXX      ncmpiUbyte.lo
  CXX      ncmpiUint.lo
  CXX      ncmpiUint64.lo
  CXX      ncmpiUshort.lo
  CXX      ncmpiException.lo
  CXX      ncmpiDim.lo
  CXX      ncmpiFile.lo
  CXX      ncmpiVarAtt.lo
  CXX      ncmpiVar.lo
  CXX      ncmpiVlenType.lo
  CXXLD    libcxx.la
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/cxx'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/cxx'
Making all in f77
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/f77'
  F77      strerrorf.lo
  F77      strerrnof.lo
  F77      inq_libversf.lo
rm -f mpifnetcdf.h issyserrf.c xstrerrorf.c xstrerrnof.c xinq_libversf.c allf.c
../../../../pnetcdf-1.12.3/src/binding/f77/buildiface -infile=../../../src/include/pnetcdf.h -deffile=../../../../pnetcdf-1.12.3/src/binding/f77/defs > allf.c
  CC       issyserrf.lo
  CC       xstrerrorf.lo
  CC       xstrerrnof.lo
  CC       xinq_libversf.lo
  CC       allf.lo
  F77LD    libf77.la
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/f77'
Making all in f90
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/f90'
m4  -DPNETCDF -DINTENTV=INOUT ../../../../pnetcdf-1.12.3/src/binding/f90/getput_text.m4 >getput_text.fh
m4  -DPNETCDF -DINTENTV=INOUT ../../../../pnetcdf-1.12.3/src/binding/f90/getput_var.m4 >getput_var.fh
m4  -DPNETCDF -DINTENTV=INOUT ../../../../pnetcdf-1.12.3/src/binding/f90/getput_varn.m4 >getput_varn.fh
m4  -DPNETCDF -DINTENTV=INOUT ../../../../pnetcdf-1.12.3/src/binding/f90/getput_vard.m4 >getput_vard.fh
make  all-am
make[4]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/f90'
  FC       pnetcdf.lo
getput_vard.fh:1988:86:

 1988 |      nf90mpi_get_vard_7D_EightByteInt_all = nfmpi_get_vard_all(ncid, varid, filetype, buf, bufcount, buftype)
      |                                                                                      1
......
 2324 |      nf90mpi_get_vard_7D_text_all = nfmpi_get_vard_all(ncid, varid, filetype, buf(1,1,1,1,1,1,1), bufcount, buftype)
      |                                                                              2        
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (INTEGER(8)/CHARACTER(*)).
getput_vard.fh:1558:86:

 1558 |      nf90mpi_put_vard_7D_EightByteInt_all = nfmpi_put_vard_all(ncid, varid, filetype, buf, bufcount, buftype)
      |                                                                                      1
......
 2253 |      nf90mpi_put_vard_7D_text_all = nfmpi_put_vard_all(ncid, varid, filetype, buf(1,1,1,1,1,1,1), bufcount, buftype)
      |                                                                              2        
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (INTEGER(8)/CHARACTER(*)).
getput_vard.fh:1128:78:

 1128 |      nf90mpi_get_vard_7D_EightByteInt = nfmpi_get_vard(ncid, varid, filetype, buf, bufcount, buftype)
      |                                                                              1
......
 2178 |      nf90mpi_get_vard_7D_text = nfmpi_get_vard(ncid, varid, filetype, buf(1,1,1,1,1,1,1), bufcount, buftype)
      |                                                                      2        
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (INTEGER(8)/CHARACTER(*)).
getput_vard.fh:698:78:

  698 |      nf90mpi_put_vard_7D_EightByteInt = nfmpi_put_vard(ncid, varid, filetype, buf, bufcount, buftype)
      |                                                                              1
......
 2107 |      nf90mpi_put_vard_7D_text = nfmpi_put_vard(ncid, varid, filetype, buf(1,1,1,1,1,1,1), bufcount, buftype)
      |                                                                      2        
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (INTEGER(8)/CHARACTER(*)).
getput_var.fh:23249:84:

23249 |              nfmpi_bput_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype, req)
      |                                                                                    1
......
23782 |              nfmpi_bput_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype, req)
      |                                                                                    2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:23257:79:

23257 |              nfmpi_bput_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype, req)
      |                                                                               1
......
23790 |              nfmpi_bput_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype, req)
      |                                                                               2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:23265:66:

23265 |              nfmpi_bput_vara(ncid, varid, localStart, localCount, values, bufcount, buftype, req)
      |                                                                  1
......
23798 |              nfmpi_bput_vara(ncid, varid, localStart, localCount, values, bufcount, buftype, req)
      |                                                                  2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:20047:84:

20047 |              nfmpi_iget_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype, req)
      |                                                                                    1
......
20580 |              nfmpi_iget_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype, req)
      |                                                                                    2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:20055:79:

20055 |              nfmpi_iget_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype, req)
      |                                                                               1
......
20588 |              nfmpi_iget_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype, req)
      |                                                                               2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:20063:66:

20063 |              nfmpi_iget_vara(ncid, varid, localStart, localCount, values, bufcount, buftype, req)
      |                                                                  1
......
20596 |              nfmpi_iget_vara(ncid, varid, localStart, localCount, values, bufcount, buftype, req)
      |                                                                  2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:16845:84:

16845 |              nfmpi_iput_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype, req)
      |                                                                                    1
......
17378 |              nfmpi_iput_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype, req)
      |                                                                                    2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:16853:79:

16853 |              nfmpi_iput_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype, req)
      |                                                                               1
......
17386 |              nfmpi_iput_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype, req)
      |                                                                               2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:16861:66:

16861 |              nfmpi_iput_vara(ncid, varid, localStart, localCount, values, bufcount, buftype, req)
      |                                                                  1
......
17394 |              nfmpi_iput_vara(ncid, varid, localStart, localCount, values, bufcount, buftype, req)
      |                                                                  2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:13645:87:

13645 |              nfmpi_get_varm_all(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype)
      |                                                                                       1
......
14171 |              nfmpi_get_varm_all(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype)
      |                                                                                       2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:13653:82:

13653 |              nfmpi_get_vars_all(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype)
      |                                                                                  1
......
14179 |              nfmpi_get_vars_all(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype)
      |                                                                                  2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:13661:69:

13661 |              nfmpi_get_vara_all(ncid, varid, localStart, localCount, values, bufcount, buftype)
      |                                                                     1
......
14187 |              nfmpi_get_vara_all(ncid, varid, localStart, localCount, values, bufcount, buftype)
      |                                                                     2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:10486:87:

10486 |              nfmpi_put_varm_all(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype)
      |                                                                                       1
......
11012 |              nfmpi_put_varm_all(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype)
      |                                                                                       2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:10494:82:

10494 |              nfmpi_put_vars_all(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype)
      |                                                                                  1
......
11020 |              nfmpi_put_vars_all(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype)
      |                                                                                  2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:10502:69:

10502 |              nfmpi_put_vara_all(ncid, varid, localStart, localCount, values, bufcount, buftype)
      |                                                                     1
......
11028 |              nfmpi_put_vara_all(ncid, varid, localStart, localCount, values, bufcount, buftype)
      |                                                                     2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:7326:83:

 7326 |              nfmpi_get_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype)
      |                                                                                   1
......
 7852 |              nfmpi_get_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype)
      |                                                                                   2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:7334:78:

 7334 |              nfmpi_get_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype)
      |                                                                              1
......
 7860 |              nfmpi_get_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype)
      |                                                                              2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:7342:65:

 7342 |              nfmpi_get_vara(ncid, varid, localStart, localCount, values, bufcount, buftype)
      |                                                                 1
......
 7868 |              nfmpi_get_vara(ncid, varid, localStart, localCount, values, bufcount, buftype)
      |                                                                 2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:4166:83:

 4166 |              nfmpi_put_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype)
      |                                                                                   1
......
 4692 |              nfmpi_put_varm(ncid, varid, localStart, localCount, localStride, map, values, bufcount, buftype)
      |                                                                                   2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:4174:78:

 4174 |              nfmpi_put_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype)
      |                                                                              1
......
 4700 |              nfmpi_put_vars(ncid, varid, localStart, localCount, localStride, values, bufcount, buftype)
      |                                                                              2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:4182:65:

 4182 |              nfmpi_put_vara(ncid, varid, localStart, localCount, values, bufcount, buftype)
      |                                                                 1
......
 4708 |              nfmpi_put_vara(ncid, varid, localStart, localCount, values, bufcount, buftype)
      |                                                                 2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:1513:50:

 1513 |          nfmpi_bput_var1(ncid, varid, localStart, buf, bufcount, buftype, req)
      |                                                  1
......
 1550 |          nfmpi_bput_var1(ncid, varid, localStart, buf, bufcount, buftype, req)
      |                                                  2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:1286:50:

 1286 |          nfmpi_iget_var1(ncid, varid, localStart, buf, bufcount, buftype, req)
      |                                                  1
......
 1323 |          nfmpi_iget_var1(ncid, varid, localStart, buf, bufcount, buftype, req)
      |                                                  2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:1059:50:

 1059 |          nfmpi_iput_var1(ncid, varid, localStart, buf, bufcount, buftype, req)
      |                                                  1
......
 1096 |          nfmpi_iput_var1(ncid, varid, localStart, buf, bufcount, buftype, req)
      |                                                  2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:832:53:

  832 |          nfmpi_get_var1_all(ncid, varid, localStart, buf, bufcount, buftype)
      |                                                     1
......
  868 |          nfmpi_get_var1_all(ncid, varid, localStart, buf, bufcount, buftype)
      |                                                     2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:615:49:

  615 |          nfmpi_get_var1(ncid, varid, localStart, buf, bufcount, buftype)
      |                                                 1
......
  651 |          nfmpi_get_var1(ncid, varid, localStart, buf, bufcount, buftype)
      |                                                 2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:398:53:

  398 |          nfmpi_put_var1_all(ncid, varid, localStart, buf, bufcount, buftype)
      |                                                     1
......
  434 |          nfmpi_put_var1_all(ncid, varid, localStart, buf, bufcount, buftype)
      |                                                     2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
getput_var.fh:181:49:

  181 |          nfmpi_put_var1(ncid, varid, localStart, buf, bufcount, buftype)
      |                                                 1
......
  217 |          nfmpi_put_var1(ncid, varid, localStart, buf, bufcount, buftype)
      |                                                 2
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(8)).
variables.fh:215:81:

......
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(4)/REAL(8)).
variables.fh:151:81:

......
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(4)/REAL(8)).
  FCLD     libf90.la
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/f90'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/f90'
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding'
Making all in packaging
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/packaging'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/packaging'
Making all in .
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src'
make[2]: Nothing to be done for 'all-am'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src'
Making all in libs
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/libs'
  GEN      libpnetcdf.la
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/libs'
Making all in utils
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils'
Making all in ncmpigen
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpigen'
  CC       main.o
  CC       load.o
  CC       escapes.o
  CC       getfill.o
  CC       init.o
  CC       genlib.o
  CC       ncmpigentab.o
  CCLD     ncmpigen
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpigen'
Making all in ncmpidump
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpidump'
  CC       ncmpidump.o
  CC       vardata.o
  CC       dumplib.o
  CCLD     ncmpidump
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpidump'
Making all in ncmpidiff
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpidiff'
/opt/cray/pe/gcc/11.2.0/bin/gcc -I../../../../pnetcdf-1.12.3/src/utils/ncvalidator -o cdfdiff ../../../../pnetcdf-1.12.3/src/utils/ncmpidiff/cdfdiff.c
  CC       ncmpidiff.o
  CCLD     ncmpidiff
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpidiff'
Making all in ncvalidator
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncvalidator'
/opt/cray/pe/gcc/11.2.0/bin/gcc -o ncvalidator ../../../../pnetcdf-1.12.3/src/utils/ncvalidator/ncvalidator.c
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncvalidator'
Making all in pnetcdf_version
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/pnetcdf_version'
/opt/cray/pe/gcc/11.2.0/bin/gcc -DMPICC="\"/opt/cray/pe/craype/2.7.19/bin/cc\"" -DCFLAGS="\"-O3\"" -DCONFIGURE_ARGS_CLEAN="\"--prefix=/global/homes/z/zanhua/VOLS/PnetCDF/1.12.3 --enable-shared\"" -DPNETCDF_VERSION="\"1.12.3\"" -DMPICXX="\"/opt/cray/pe/craype/2.7.19/bin/CC\"" -DCXXFLAGS="\"-O3\"" -DMPIF77="\"/opt/cray/pe/craype/2.7.19/bin/ftn\"" -DFFLAGS="\"-O3 -fallow-argument-mismatch\"" -DMPIF90="\"/opt/cray/pe/craype/2.7.19/bin/ftn\"" -DFCFLAGS="\"-O3 -fallow-argument-mismatch\"" -o pnetcdf_version ../../../../pnetcdf-1.12.3/src/utils/pnetcdf_version/pnetcdf_version.c
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/pnetcdf_version'
Making all in ncoffsets
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncoffsets'
/opt/cray/pe/gcc/11.2.0/bin/gcc -o ncoffsets ../../../../pnetcdf-1.12.3/src/utils/ncoffsets/ncoffsets.c
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncoffsets'
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src'
Making all in man
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/man'
m4 -DPNETCDF -DAPI=C -DPNETCDF_VERSION=1.12.3 ../../pnetcdf-1.12.3/man/pnetcdf.m4 > pnetcdf.3  || rm -f pnetcdf.3
m4 -DPNETCDF -DAPI=F -DPNETCDF_VERSION=1.12.3 ../../pnetcdf-1.12.3/man/pnetcdf.m4 > pnetcdf_f77.3  || rm -f pnetcdf_f77.3
m4 -DPNETCDF -DPNETCDF_VERSION=1.12.3 ../../pnetcdf-1.12.3/man/pnetcdf_f90.m4 > pnetcdf_f90.3  || rm -f pnetcdf_f90.3
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/man'
Making all in examples
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples'
Making all in C
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/C'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/C'
Making all in CXX
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/CXX'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/CXX'
Making all in F77
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/F77'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/F77'
Making all in F90
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/F90'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/F90'
Making all in tutorial
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/tutorial'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/tutorial'
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples'
make[2]: Nothing to be done for 'all-am'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples'
Making all in benchmarks
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks'
Making all in C
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks/C'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks/C'
Making all in FLASH-IO
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks/FLASH-IO'
  PPFC     get_mfluid_property.o
  PPFC     flash_release.o
  PPFC     flash_benchmark_io.o
  PPFC     checkpoint_ncmpi_parallel.o
  PPFC     plotfile_ncmpi_parallel.o
../../../pnetcdf-1.12.3/benchmarks/FLASH-IO/flash_benchmark_io.F90:236:23:

  221 |        call MPI_Reduce(chk_t, tmax, 3, MPI_DOUBLE_PRECISION, MPI_MAX, &
      |                       2
......
  236 |        call MPI_Reduce(chk_io, bw, 1, MPI_DOUBLE_PRECISION, MPI_SUM, &
      |                       1
Warning: Rank mismatch between actual argument at (1) and actual argument at (2) (rank-1 and scalar)
../../../pnetcdf-1.12.3/benchmarks/FLASH-IO/flash_benchmark_io.F90:239:23:

  221 |        call MPI_Reduce(chk_t, tmax, 3, MPI_DOUBLE_PRECISION, MPI_MAX, &
      |                       2
......
  239 |        call MPI_Reduce(nocorner_io, bw, 1, MPI_DOUBLE_PRECISION, MPI_SUM, &
      |                       1
Warning: Rank mismatch between actual argument at (1) and actual argument at (2) (rank-1 and scalar)
../../../pnetcdf-1.12.3/benchmarks/FLASH-IO/flash_benchmark_io.F90:242:23:

  221 |        call MPI_Reduce(chk_t, tmax, 3, MPI_DOUBLE_PRECISION, MPI_MAX, &
      |                       2
......
  242 |        call MPI_Reduce(corner_io, bw, 1, MPI_DOUBLE_PRECISION, MPI_SUM, &
      |                       1
Warning: Rank mismatch between actual argument at (1) and actual argument at (2) (rank-1 and scalar)
../../../pnetcdf-1.12.3/benchmarks/FLASH-IO/flash_benchmark_io.F90:303:26:

  221 |        call MPI_Reduce(chk_t, tmax, 3, MPI_DOUBLE_PRECISION, MPI_MAX, &
      |                       2   
......
  303 |           call MPI_Reduce(malloc_size, sum_size, 1, MPI_OFFSET, MPI_SUM, &
      |                          1
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (INTEGER(8)/REAL(8)).
../../../pnetcdf-1.12.3/benchmarks/FLASH-IO/flash_benchmark_io.F90:79:21:

   74 |       call MPI_Bcast(isArgvRight, 1, MPI_LOGICAL, MasterPE, &
      |                     2
......
   79 |       call MPI_Bcast(basenm, 128, MPI_CHARACTER, MasterPE, &
      |                     1
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (CHARACTER(128)/LOGICAL(4)).
../../../pnetcdf-1.12.3/benchmarks/FLASH-IO/flash_benchmark_io.F90:129:39:

  122 |       nocorner_io = plotfile_ncmpi_par(0, simtime, .false.)
      |                                          2
......
  129 |       corner_io = plotfile_ncmpi_par(0,0.e0,.true.)
      |                                       1
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(4)/REAL(8)).
  FCLD     flash_benchmark_io
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks/FLASH-IO'
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks'
make[2]: Nothing to be done for 'all-am'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks'
Making all in test
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test'
Making all in common
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/common'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/common'
Making all in C
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/C'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/C'
Making all in fandc
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/fandc'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/fandc'
Making all in nc_test
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nc_test'
m4 -DPNETCDF -I../../../pnetcdf-1.12.3/m4 ../../../pnetcdf-1.12.3/test/nc_test/tests.h.m4 > tests.h
make  all-am
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nc_test'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nc_test'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nc_test'
Making all in cdf_format
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/cdf_format'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/cdf_format'
Making all in header
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/header'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/header'
Making all in testcases
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/testcases'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/testcases'
Making all in nonblocking
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nonblocking'
m4  -DPNETCDF -I../../../pnetcdf-1.12.3/m4 ../../../pnetcdf-1.12.3/test/nonblocking/bput_varn.m4 >bput_varn.c
m4  -DPNETCDF -I../../../pnetcdf-1.12.3/m4 ../../../pnetcdf-1.12.3/test/nonblocking/column_wise.m4 >column_wise.c
make  all-am
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nonblocking'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nonblocking'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nonblocking'
Making all in CXX
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/CXX'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/CXX'
Making all in nf_test
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nf_test'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nf_test'
Making all in nf90_test
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nf90_test'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nf90_test'
Making all in F90
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/F90'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/F90'
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test'
make[2]: Nothing to be done for 'all-am'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test'
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build'
make[1]: Nothing to be done for 'all-am'.
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build'
  FCLD     libf90.la
make[4]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/f90'
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding/f90'
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/binding'
Making all in packaging
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/packaging'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/packaging'
Making all in .
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src'
make[2]: Nothing to be done for 'all-am'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src'
Making all in libs
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/libs'
  GEN      libpnetcdf.la
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/libs'
Making all in utils
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils'
Making all in ncmpigen
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpigen'
  CCLD     ncmpigen
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpigen'
Making all in ncmpidump
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpidump'
  CCLD     ncmpidump
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpidump'
Making all in ncmpidiff
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpidiff'
  CCLD     ncmpidiff
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncmpidiff'
Making all in ncvalidator
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncvalidator'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncvalidator'
Making all in pnetcdf_version
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/pnetcdf_version'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/pnetcdf_version'
Making all in ncoffsets
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncoffsets'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils/ncoffsets'
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src/utils'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/src'
Making all in man
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/man'
make[1]: Nothing to be done for 'all'.
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/man'
Making all in examples
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples'
Making all in C
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/C'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/C'
Making all in CXX
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/CXX'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/CXX'
Making all in F77
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/F77'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/F77'
Making all in F90
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/F90'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/F90'
Making all in tutorial
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/tutorial'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples/tutorial'
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples'
make[2]: Nothing to be done for 'all-am'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/examples'
Making all in benchmarks
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks'
Making all in C
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks/C'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks/C'
Making all in FLASH-IO
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks/FLASH-IO'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks/FLASH-IO'
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks'
make[2]: Nothing to be done for 'all-am'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/benchmarks'
Making all in test
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test'
Making all in common
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/common'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/common'
Making all in C
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/C'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/C'
Making all in fandc
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/fandc'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/fandc'
Making all in nc_test
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nc_test'
make  all-am
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nc_test'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nc_test'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nc_test'
Making all in cdf_format
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/cdf_format'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/cdf_format'
Making all in header
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/header'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/header'
Making all in testcases
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/testcases'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/testcases'
Making all in nonblocking
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nonblocking'
make  all-am
make[3]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nonblocking'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nonblocking'
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nonblocking'
Making all in CXX
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/CXX'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/CXX'
Making all in nf_test
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nf_test'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nf_test'
Making all in nf90_test
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nf90_test'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/nf90_test'
Making all in F90
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/F90'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test/F90'
make[2]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test'
make[2]: Nothing to be done for 'all-am'.
make[2]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test'
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build/test'
make[1]: Entering directory '/global/u2/z/zanhua/VOLS/PnetCDF/build'
make[1]: Nothing to be done for 'all-am'.
make[1]: Leaving directory '/global/u2/z/zanhua/VOLS/PnetCDF/build'
