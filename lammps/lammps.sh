#!/bin/bash -l
#SBATCH -N 1
#SBATCH --ntasks-per-node 1
#SBATCH -t 19:0:0
#SBATCH --mem 32G 
#SBATCH --partition GPU-All


source /sharedext4/local/deepmd-kit-0.12.4/bin/activate

cd task.171.000002
test $? -ne 0 && exit
/sharedext4/softwares/lammps/bin/lmp_serial -i input.lammps 1> model_devi.log 2> model_devi.log 
test $? -ne 0 && exit
cd /sharedext4/cuzn_generator/deep.gen/cuzn_generator/cuzn/3346a245-219e-49c8-bead-f66eaf529f07
test $? -ne 0 && exit

touch tag_finished
