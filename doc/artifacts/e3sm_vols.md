<!-- # INT-1509: Development of HDF5-VOL layers for I/O to accelerate writing via HDF API
This document provides supporting evidence of the integration of the HDF5 Log VOL connector with the Cache and Asynchronous I/O VOL connectors. This document uses the E3SM_IO benchmark to demonstrate the integration. The build instructions, run instructions and run results are provided. -->

## Build Instructions
### Prerequisite
+ Env Variables. These env vars are used during installing the libraries and running the benchmark.
    ```shell
    % export WORKSPACE=${HOME}  # under which folder will we work
    % export HDF5_DIR=${WORKSPACE}/HDF5
    % export ABT_DIR=${WORKSPACE}/Argobots
    % export ASYNC_DIR=${WORKSPACE}/Async
    % export CAHCE_DIR=${WORKSPACE}/Cache
    % export LOGVOL_DIR=${WORKSPACE}/Log

    % export HDF5_ROOT=${HDF5_DIR}
    ```
+ HDF5 1.13.3:

    ```shell
    # create a new folder "HDF5" under $WORKSPACE
    
    % mkdir ${HDF5_DIR}
    % cd ${HDF5_DIR}
    
    # download HDF5 source codes
    % wget -cq https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.13/hdf5-1.13.3/src/hdf5-1.13.3.tar.gz
    % tar -zxf hdf5-1.13.3.tar.gz
    % cd hdf5-1.13.3
    
    # configure, output saved to log.config
    % ./configure --prefix=${WORKSPACE}/HDF5 \
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
    # create a new folder "Argobots" under $WORKSPACE
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
    # create a new folder "Async" under $WORKSPACE
    
    % mkdir ${ASYNC_DIR}
    % cd ${ASYNC_DIR}

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
    # create a new folder "Cache" under $WORKSPACE
    % mkdir ${CAHCE_DIR}
    % cd ${CAHCE_DIR}

    # set up env variable LD_LIBRARY_PATH
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
    # create a new folder "Log" under $WORKSPACE
    
    % cd ${LOGVOL_DIR}

    # download Log VOL source codes
    % git clone git@github.com:DataLib-ECP/vol-log-based.git
    % cd vol-log-based

    # create configure file, output saved to log.autoreconf
    % autoreconf -i &> log.autoreconf
    
    # configure
    % ./configure \
        --with-hdf5=${WORKSPACE}/HDF5 \
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

<!-- + PnetCDF (used by the benchmark to read large input files, optional)

    ```shell
    # create a new folder "PnetCDF" under $WORKSPACE
    % mkdir ${WORKSPACE}/PnetCDF
    % cd ${WORKSPACE}/PnetCDF

    # download PnetCDF source codes and create a build folder
    % wget https://parallel-netcdf.github.io/Release/pnetcdf-1.12.3.tar.gz
    % tar -xf pnetcdf-1.12.3.tar.gz
    % mkdir build
    % cd build

    # configure
    % CC=cc CXX=CC FC=ftn F77=ftn \
        CFLAGS=-O3 CXXFLAGS=-O3 FCFLAGS=-O3 FFLAGS=-O3 \
        ../pnetcdf-1.12.3/configure \
        --prefix=${WORKSPACE}/PnetCDF/1.12.3 \
        --enable-shared

    # make, output saved to log.make
    %  make -j 16 &> log.make

    # install, output saved to log.make
    % make install &> log.makeinstall
    ```
    [log.config](./logfiles/PnetCDF/log.config)

    [log.make](./logfiles/PnetCDF/log.make)

    [log.makeinstall](./logfiles/PnetCDF/log.makeinstall) -->

+ E3SM-IO Benchmark
    ```shell
    # create a new folder "E3SM" under $WORKSPACE
    % mkdir ${WORKSPACE}/E3SM
    % cd ${WORKSPACE}/E3SM

    # download E3SM-IO source codes
    % git clone git@github.com:Parallel-NetCDF/E3SM-IO.git
    % cd E3SM-IO

    # create configure file, output saved to log.autoreconf
    % autoreconf -i &> log.autoreconf
    
    # configure
    % CFLAGS="-fno-var-tracking-assignments ${CFLAGS}" \
        CXXFLAGS="-fno-var-tracking-assignments ${CXXFLAGS}" \
        LD_LIBRARY_PATH="${WORKSPACE}/HDF5/lib:${LD_LIBRARY_PATH}" \
        ../E3SM-IO/configure \
        --with-hdf5=${WORKSPACE}/HDF5 \
        --with-pnetcdf=${WORKSPACE}/PnetCDF/1.12.3 \
        --prefix=${WORKSPACE}/E3SM/install \
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
1. 1 Node and 16 MPI processes per Node
1. Lustre File Settings: 1MiB Stripe Size, 16 OSTs.

### The Log VOL Connector Only
1. ENV Setting
   
    ```shell
    % export HDF5_PLUGIN_PATH="${LOGVOL_DIR}/install/lib"
    % export HDF5_VOL_CONNECTOR="LOG under_vol=0;under_info={}"
    % export LD_LIBRARY_PATH="${HDF5_DIR}/lib":"${HDF5_PLUGIN_PATH}":${LD_LIBRARY_PATH}
    ```
1. Run Commands:
   
    The job script used is [here](run_scripts/log_only.sh).
2.  Output
    1.  [log.f.txt](outputs/log_only/log.f.txt)
    2.  [log.g.txt](outputs/log_only/log.g.txt)
    3.  [log.i.txt](outputs/log_only/log.i.txt)

### Log + Cache + Async VOL Connectors

1. ENV Setting
   
    ```shell
    % export HDF5_PLUGIN_PATH=${LOGVOL_DIR}/lib:${CACHE_DIR}/lib:${ASYNC_DIR}/lib
    % export LD_LIBRARY_PATH=${HDF5_PLUGIN_PATH}:${ABT_DIR}/lib:${HDF5_DIR}/lib:${LD_LIBRARY_PATH}
    % export HDF5_VOL_CONNECTOR="LOG under_vol=513;under_info={config=cache.cfg;under_vol=512;under_info={under_vol=0;under_info={}}}"
    ```
1. Put `cache.cfg` file under the folder where you run `srun` command. Note that this `cache.cfg` should not end with a new line.
    ```shell
    % cat cache.cfg
    HDF5_CACHE_STORAGE_SCOPE: LOCAL # the scope of the storage [LOCAL|GLOBAL]
    HDF5_CACHE_STORAGE_PATH: ./
    HDF5_CACHE_STORAGE_SIZE: 128188383838 # size of the storage space in bytes
    HDF5_CACHE_WRITE_BUFFER_SIZE: 2147483648 
    HDF5_CACHE_STORAGE_TYPE: MEMORY # local storage type [SSD|BURST_BUFFER|MEMORY|GPU], default SSD
    HDF5_CACHE_REPLACEMENT_POLICY: LRU # [LRU|LFU|FIFO|LIFO]
    ```
2. Run Commands

    The job script used is [here](run_scripts/3vols.sh).

3.  Output
    1.  [f.txt](outputs/3vols/f.txt)
    1.  [g.txt](outputs/3vols/g.txt)
    1.  [i.txt](outputs/3vols/i.txt)
