#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p GPU-All
#SBATCH --gres:gpu=1

source /sharedext4/softwares/source/vasp_cpu.activate
export LD_LIBRARY_PATH=/sharedext4/lib64:$LD_LIBRARY_PATH

#export LD_LIBRARY_PATH=/sharedext4/tensorflow_python/lib64:$LD_LIBRARY_PATH


#source /sharedext4/local/tensorflow_gpu/bin/activate

#export PYTHONPATH=/sharedext4/local/tensorflow_gpu/lib/python3.6/site-packages:$PYTHONPATH

export LD_LIBRARY_PATH=/sharedext4/lib64/mpich/lib:$LD_LIBRARY_PATH
#/sharedext4/local/deepmd-kit-temp/bin/dp_train input.json
#openmpi

#export PATH=/sharedext4/openmpi4/bin:$PATH

#export LD_LIBRARY_PATH=//sharedext4/openmpi4/lib:$LD_LIBRARY_PATH

#export MANPATH=/sharedext4/openmpi4/share/man:$MANPATH
#module load mpi/openmpi/v2.1.2-hfi

#mpi
export PATH=/sharedext4/local/mpich-3.2.1/bin:$PATH
export LIBRARY_PATH=/sharedext4/local/mpich-3.2.1/include:$LIBRARY_PATH
export LD_LIBRARY_PATH=/sharedext4/local/mpich-3.2.1/lib:$LD_LIBRARY_PATH
/sharedext4/vasp/vasp.5.4.4/bin/vasp_std


