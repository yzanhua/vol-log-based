# INT-1509: Development of HDF5-VOL layers for I/O to accelerate writing via HDF API
This document provides supporting evidence of the integration of the HDF5 Log VOL connector with the Cache and Asynchronous I/O VOL connectors. This document uses the E3SM_IO benchmark to demonstrate the integration. The build instructions, run instructions and run results are provided.

## Build Instructions
### Prerequisite
+ HDF5 1.13.3:

    ```shell
    # create a new folder "HDF5" under $GITHUB_WORKSPACE
    % export GITHUB_WORKSPACE=${HOME}
    % mkdir ${GITHUB_WORKSPACE}/HDF5
    % cd ${GITHUB_WORKSPACE}/HDF5
    
    # download HDF5 source codes
    % wget -cq https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.13/hdf5-1.13.3/src/hdf5-1.13.3.tar.gz
    % tar -zxf hdf5-1.13.3.tar.gz
    % cd hdf5-1.13.3
    
    # configure, output saved to log.config
    % ./configure --prefix=${GITHUB_WORKSPACE}/HDF5 \
        --silent \
        --disable-fortran \
        --disable-tests \
        --enable-parallel \
        --enable-threadsafe \
        --enable-unsupported \
        --enable-build-mode=production \
        CC=cc \
        &> log.config
    # make, output saved to log.make
    % make -j 16 &> log.make

    # install, output saved to log.makeinstall
    % make install &> log.makeinstall
    ```

    [log.config](./logfiles/HDF5/log.config)

    [log.make](./logfiles/HDF5/log.make)

    [log.makeinstall](./logfiles/HDF5/log.makeinstall)

+ Argobots, [required by Async VOL](https://hdf5-vol-async.readthedocs.io/en/latest/gettingstarted.html#build-async-i-o-vol):

    ```shell
    # create a new folder "Argobots" under $GITHUB_WORKSPACE
    % export ABT_DIR=${GITHUB_WORKSPACE}/Argobots
    % mkdir ${ABT_DIR}
    % cd ${ABT_DIR}

    # download Argobots source codes
    % wget -qc https://github.com/pmodels/argobots/archive/refs/tags/v1.1.tar.gz
    % tar -xf v1.1.tar.gz
    % cd argobots-1.1

    # create configure file
    % ./autogen.sh &> log.autogen

    # configure, output saved to log.config
    % ./configure --prefix=${ABT_DIR} \
        --silent \
        CC=cc \
        CXX=CC \
        &> log.config
    
    # make, output saved to log.make
    % make -j 16 &> log.make
    
    # install, output saved to log.makeinstall
    make install &> log.makeinstall
    ```
    [log.autogen](./logfiles/Argobots/log.autogen)

    [log.config](./logfiles/Argobots/log.config)

    [log.make](./logfiles/Argobots/log.make)

    [log.makeinstall](./logfiles/Argobots/log.makeinstall)

+ Async VOL

    ```shell
    # create a new folder "Async" under $GITHUB_WORKSPACE
    % export ASYNC_DIR=${GITHUB_WORKSPACE}/Async
    % mkdir ${ASYNC_DIR}
    % cd ${ASYNC_DIR}

    # set up env variables
    % export ABT_DIR=${GITHUB_WORKSPACE}/Argobots
    % export HDF5_DIR=${GITHUB_WORKSPACE}/HDF5
    % export HDF5_ROOT=${HDF5_DIR}

    # download Async VOL source codes and create a build folder
    % wget -qc https://github.com/hpc-io/vol-async/archive/refs/tags/v1.4.tar.gz
    % tar -xf v1.4.tar.gz
    % cd vol-async-1.4
    % mkdir build
    % cd build

    # cmake, output saved to log.cmake
    % CC=cc CXX=CC \
        cmake .. -DCMAKE_INSTALL_PREFIX=${ASYNC_DIR} \
        &> log.cmake
    
    # make, output saved to log.make
    %  make -j 16 &> log.make

    # install, output saved to log.make
    % make install &> log.makeinstall
    ```
    [log.cmake](./logfiles/Async/log.cmake)

    [log.make](./logfiles/Async/log.make)

    [log.makeinstall](./logfiles/Async/log.makeinstall)

+ Cache VOL

    ```shell
    # create a new folder "Cache" under $GITHUB_WORKSPACE
    % export CAHCE_DIR=${GITHUB_WORKSPACE}/Cache
    % mkdir ${CAHCE_DIR}
    % cd ${CAHCE_DIR}

    # set up env variables
    % export ABT_DIR=${GITHUB_WORKSPACE}/Argobots
    % export HDF5_DIR=${GITHUB_WORKSPACE}/HDF5
    % export ASYNC_DIR=${GITHUB_WORKSPACE}/Async
    % export HDF5_ROOT=${HDF5_DIR}
    % export LD_LIBRARY_PATH="$ABT_DIR/lib:$LD_LIBRARY_PATH"

    # download Cache VOL source codes and create a build folder
    % git clone https://github.com/hpc-io/vol-cache.git
    % cd vol-cache
    % mkdir build
    % cd build

    # cmake, output saved to log.cmake
    % CC=cc CXX=CC \
        HDF5_VOL_DIR=${ASYNC_DIR} \
        cmake .. -DCMAKE_INSTALL_PREFIX=${CAHCE_DIR} \
        &> log.cmake
    
    # make, output saved to log.make
    %  make -j 16 &> log.make

    # install, output saved to log.make
    % make install &> log.makeinstall
    ```

    [log.cmake](./logfiles/Cache/log.cmake)

    [log.make](./logfiles/Cache/log.make)

    [log.makeinstall](./logfiles/Caches/log.makeinstall)

+ Log VOL

    ```shell
    # create a new folder "Log" under $GITHUB_WORKSPACE
    % export LOGVOL_DIR=${GITHUB_WORKSPACE}/Log
    % cd ${LOGVOL_DIR}

    # download Log VOL source codes
    % git clone git@github.com:DataLib-ECP/vol-log-based.git
    % cd vol-log-based

    # create configure file, output saved to log.autoreconf
    % autoreconf -i &> log.autoreconf
    
    # configure
    % ./configure \
        --with-hdf5=${GITHUB_WORKSPACE}/HDF5 \
        --prefix=${LOGVOL_DIR}/install \
        CC=cc \
        CXX=CC \
        &> log.config
    
    # make, output saved to log.make
    %  make -j 16 &> log.make

    # install, output saved to log.make
    % make install &> log.makeinstall
    ```
    [log.autoreconf](./logfiles/Log/log.autoreconf)

    [log.config](./logfiles/Log/log.config)

    [log.make](./logfiles/Log/log.make)

    [log.makeinstall](./logfiles/Log/log.makeinstall)

+ PnetCDF (used by the benchmark to read large input files, optional)

    ```shell
    # create a new folder "PnetCDF" under $GITHUB_WORKSPACE
    % mkdir ${GITHUB_WORKSPACE}/PnetCDF
    % cd ${GITHUB_WORKSPACE}/PnetCDF

    # download PnetCDF source codes and create a build folder
    % wget https://parallel-netcdf.github.io/Release/pnetcdf-1.12.3.tar.gz
    % tar -xf pnetcdf-1.12.3.tar.gz
    % mkdir build
    % cd build

    # configure
    % CC=cc CXX=CC FC=ftn F77=ftn \
        CFLAGS=-O3 CXXFLAGS=-O3 FCFLAGS=-O3 FFLAGS=-O3 \
        ../pnetcdf-1.12.3/configure \
        --prefix=${GITHUB_WORKSPACE}/PnetCDF/1.12.3 \
        --enable-shared

    # make, output saved to log.make
    %  make -j 16 &> log.make

    # install, output saved to log.make
    % make install &> log.makeinstall
    ```
    [log.config](./logfiles/PnetCDF/log.config)

    [log.make](./logfiles/PnetCDF/log.make)

    [log.makeinstall](./logfiles/PnetCDF/log.makeinstall)

+ E3SM-IO Benchmark
    ```shell
    # create a new folder "E3SM" under $GITHUB_WORKSPACE
    % mkdir ${GITHUB_WORKSPACE}/E3SM
    % cd ${GITHUB_WORKSPACE}/E3SM

    # download E3SM-IO source codes
    % git clone git@github.com:Parallel-NetCDF/E3SM-IO.git
    % cd E3SM-IO

    # create configure file, output saved to log.autoreconf
    % autoreconf -i &> log.autoreconf
    
    # configure
    % CFLAGS="-fno-var-tracking-assignments ${CFLAGS}" \
        CXXFLAGS="-fno-var-tracking-assignments ${CXXFLAGS}" \
        LD_LIBRARY_PATH="${GITHUB_WORKSPACE}/HDF5/lib:${LD_LIBRARY_PATH}" \
        ../E3SM-IO/configure \
        --with-hdf5=${GITHUB_WORKSPACE}/HDF5 \
        --with-pnetcdf=${GITHUB_WORKSPACE}/PnetCDF/1.12.3 \
        --prefix=${GITHUB_WORKSPACE}/E3SM/install \
        --enable-threading \
        CC=cc \
        CXX=CC
    
    # make, output saved to log.make
    %  make -j 16 &> log.make

    # install, output saved to log.make
    % make install &> log.makeinstall
    ```
    [log.autoreconf](./logfiles/E3SM/log.autoreconf)

    [log.config](./logfiles/E3SM/log.config)

    [log.make](./logfiles/E3SM/log.make)

    [log.makeinstall](./logfiles/E3SM/log.makeinstall)


## Running E3SM-IO
1. Running F/G/I cases 
1. the input file `map_[f/g/i]_case_16p.h5`. 
1. On Perlmutter @ NERSC, 
1. 1 Node and 64 MPI processes per Node
1. Lustre File Settings: 1MiB Stripe Size, 16 OSTs.

[job_script.sh](./job_script.sh)

## Results
F case (`map_f_case_16p.h5`): [f.out](./results/f.out)

G case (`map_g_case_16p.h5`): did not finish

I case (`map_i_case_16p.h5`): [i.out](./results/i.out)


Also tried large F case (`map_f_case_21600p.h5`) using 8 Nodes with 64 MPI processes per Node, but the program did not finish.


