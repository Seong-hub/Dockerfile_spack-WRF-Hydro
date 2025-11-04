FROM lalll5555/jupyter-spack:v1.1
ENV LD_LIBRARY_PATH=""

RUN apt install -y git cmake libnetcdff-dev mpi-default-dev

RUN mkdir /usr/local/LISF/WRF-Hydro && cd /usr/local/LISF/WRF-Hydro && wget https://github.com/NCAR/wrf_hydro_nwm_public/archive/refs/tags/v5.4.0.tar.gz && tar xvfz v5.4.0.tar.gz

ENV def_lis_netcdf=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/netcdf-c-4.8.1-vgmivrtzzqaojwy6lwvkaceua26yeizt
ENV def_lis_openjpeg=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/openjpeg-2.4.0-4vwm56xzjg5nioasxbtrf6fc2op553md
ENV def_lis_eccodes=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/eccodes-2.23.0-cy5sdiphdzf34pafx5udjiut27kw33ko
ENV def_lis_hdf4=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/hdf-4.2.15-mmi5mlhqzdaa5ivrkcnaidzquqerrg4g
ENV def_lis_hdfeos=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/hdf-eos2-2.20v1.00-hux7ips5rd2q5oek5dywj37getdvihjs
ENV def_lis_hdf5=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/hdf5-1.12.1-7pagvms2cazak5k7w63v754kr46r3bsk
ENV def_lis_modesmf=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/esmf-8.1.1-sbsh42z66rr7fzifz263oybm2y4m4xmv/mod
ENV def_lis_libesmf=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/esmf-8.1.1-sbsh42z66rr7fzifz263oybm2y4m4xmv/lib
ENV def_lis_openmpi=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/openmpi-4.1.6-rlqazggfe7ulnw3xecqvku6p5c4oldsd

ENV NETCDF=/usr/local/LISF/spack/opt/spack/linux-ubuntu22.04-zen2/gcc-11.2.0/netcdf-c-4.8.1-vgmivrtzzqaojwy6lwvkaceua26yeizt

ENV LDT_ARCH=linux_gfortran
ENV LDT_FC=mpif90
ENV LDT_CC=mpicc
ENV LDT_NETCDF=$def_lis_netcdf
ENV LDT_OPENJPEG=$def_lis_openjpeg
ENV LDT_ECCODES=$def_lis_eccodes
ENV LDT_HDF4=$def_lis_hdf4
ENV LDT_HDFEOS=$def_lis_hdfeos
ENV LDT_HDF5=$def_lis_hdf5
ENV LDT_MODESMF=$def_lis_modesmf
ENV LDT_LIBESMF=$def_lis_libesmf
ENV LIS_ARCH=linux_gfortran  
ENV LIS_SPMD=parallel 
ENV LIS_FC=mpif90
ENV LIS_CC=mpicc
ENV LIS_OPENJPEG=$def_lis_openjpeg 
ENV LIS_ECCODES=$def_lis_eccodes 
ENV LIS_NETCDF=$def_lis_netcdf 
ENV LIS_HDF4=$def_lis_hdf4 
ENV LIS_HDFEOS=$def_lis_hdfeos 
ENV LIS_HDF5=$def_lis_hdf5 
ENV LIS_MODESMF=$def_lis_modesmf 
ENV LIS_LIBESMF=$def_lis_libesmf
ENV LVT_ARCH=linux_gfortran 
ENV LVT_FC=mpif90 
ENV LVT_CC=mpicc 
ENV LVT_MODESMF=$def_lis_modesmf 
ENV LVT_LIBESMF=$def_lis_libesmf 
ENV LVT_NETCDF=$def_lis_netcdf 
ENV LVT_ECCODES=$def_lis_eccodes 
ENV LVT_OPENJPEG=$def_lis_openjpeg 
ENV LVT_HDF4=$def_lis_hdf4 
ENV LVT_HDFEOS=$def_lis_hdfeos 
ENV LVT_HDF5=$def_lis_hdf5 
ENV LD_LIBRARY_PATH="$def_lis_hdf4/lib":"$def_lis_openmpi/lib":"$def_lis_openjpeg/lib":"$def_lis_hdf5/lib":"$def_lis_hdfeos/lib":"$def_lis_libesmf":"$def_lis_netcdf/lib":"$def_lis_eccodes/lib":${LD_LIBRARY_PATH}
ENV PATH=${PATH}:"$def_lis_netcdf/bin"