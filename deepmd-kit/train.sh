#!/bin/bash
#SBATCH --ntasks-per-node 1
#SBATCH -p GPU-All
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=4

export LD_LIBRARY_PATH=/sharedext4/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/sharedext4/tensorflow_python/lib64:$LD_LIBRARY_PATH
source /sharedext4/local/tensorflow_gpu/bin/activate
export PYTHONPATH=/sharedext4/local/tensorflow_gpu/lib/python3.6/site-packages:$PYTHONPATH
/sharedext4/local/deepmd-kit-0.12.4/bin/dp_train water.json



