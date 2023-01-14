# kranke - Jan 2023
# Script to compile FastEddy
# Changed Makefile as well to include libraries for netcdf and cuda -- See github for changes
# Using default cuda module


module load cuda/11
export C_INCLUDE_PATH="/afs/crc/group/EnvStat/build/include:${C_INCLUDE_PATH}"
export CPLUS_INCLUDE_PATH="/afs/crc/group/EnvStat/build/include:${CPLUS_INCLUDE_PATH}"
export NETCDFBASE='/afs/crc/group/EnvStat/build'
export NETCDF='/afs/crc/group/EnvStat/build'
make 
