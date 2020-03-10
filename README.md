# DP_Software
This is an easy test for softwares relevant to deepmd
## deepmd-kit 
we use water as test case.

`train.sh` is an example slurm script you may follow.

## lammps 

4 cuzn models and lammps input  have been prapared in `lammps/data`

`lammps.sh`is an example slurm script you may follow.

## train 

We priovide Cu and Zr examples with cpu and gpu version. 

Cpu tests contain 1,4,16,48 cores.

Gpu tests contain 1,2,4 gpu nodes.

Each sub-folder contains fast and normal algorithm tests.

## dpgen

This test aims to test whether process of ssh can succeed.

We provide Ch4 as example.

Main program is `generator/gen.py`.

Sample jsons needed for dpgen are placed in `generator/ch4/`. You may modify `machine.json` corresponding to the machine.

You may run dpgen by `python gen.py ch4/param.json ch4/machine.json`

## GMX
Gromacs-2019.4 && Plmued-2.6-pert


test command: 

```


export LD_LIBRARY_PATH=/root/gromacs-2019.4/lib64:/root/plumed-2.6.0/lib:/root/openmpi/lib:$LD_LIBRARY_PATH 
source /root/gromacs-2019.4/bin/GMXRC

cd  hrex;
mpirun -np 4 --allow-run-as-root /root/yuzhi/gromacs-2019.4-mpi/bin/gmx_mpi mdrun -multidir rep0 rep1 rep2 rep3 -deffnm topol -dhdl dhdl.xvg  -v -plumed plumed.dat -replex 500 -nsteps 10000 -hrex

```
