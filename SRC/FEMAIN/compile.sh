# kranke - Jan 2023
# Script to compile FastEddy
# Changed Makefile as well to include libraries for netcdf and cuda -- See github for changes
# Using default cuda module

export LD_LIBRARY_PATH=${INIT_LD_LIBRARY_PATH}

module purge
module load CRC_default
module load cuda/11.6
module load intel/19.0
module -t list

export C_INCLUDE_PATH="/opt/crc/c/cuda/11.6/Linux_x86_64/22.3/cuda/11.6/include:/afs/crc/group/EnvStat/build/include:${C_INCLUDE_PATH}"
export CPLUS_INCLUDE_PATH="/afs/crc/group/EnvStat/build/include:${CPLUS_INCLUDE_PATH}"
export NETCDFBASE='/afs/crc/group/EnvStat/build'
export NETCDF='/afs/crc/group/EnvStat/build'
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/afs/crc/group/EnvStat/build/lib"
make 
