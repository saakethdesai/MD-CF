#!/bin/bash
#PBS -l walltime=04:00:00
#PBS -l nodes=3:ppn=16
#PBS -N T01_1
#PBS -q standby
set echo
cd $PBS_O_WORKDIR
module load lammps/15Feb16_impi-5.1.2.150
mpirun -np 48 ~/lmp_new2 < bondcreate.in >> bondcreate.out
