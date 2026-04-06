#!/bin/bash

# Clean existing environment
module --force purge

# Load common packages
module load ncarenv/25.10
module load gcc/14.3.0
module load cray-libsci/25.03.0
module load ncarcompilers/1.2.0
module load cray-mpich/8.1.32
module load netcdf-mpi/4.9.3
module load parallel-netcdf/1.14.1
module load parallelio/2.6.8
module load esmf-mpi/8.9.1
module load cmake/3.31.8
module load linaro-forge/25.1

# Get FMS from UFS-WM spack-stack installation
module use -a /glade/work/epicufsrt/contrib/spack-stack/derecho/spack-stack-1.9.3/envs/ue-gcc-12.4.0/install/modulefiles/gcc/12.4.0
module use -a /glade/work/epicufsrt/contrib/spack-stack/derecho/spack-stack-1.9.3/envs/ue-gcc-12.4.0/install/modulefiles/cray-mpich/8.1.29-amzxfjj/gcc/12.4.0
module load fms/2024.02

# List loaded packages
module li

# Set required variables
export PIO_C_PATH=${PIO}
export PIO_Fortran_PATH=${PIO}
export PIO_C_LIBRARY=${PIO_C_PATH}/lib
export PIO_C_INCLUDE_DIR=${PIO_C_PATH}/include
export PIO_Fortran_LIBRARY=${PIO_Fortran_PATH}/lib
export PIO_Fortran_INCLUDE_DIR=${PIO_Fortran_PATH}/include
export FMS_ROOT=$fms_ROOT

