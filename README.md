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
