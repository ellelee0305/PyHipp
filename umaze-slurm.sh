#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=1:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "umaze"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o umaze-slurm.%N.%j.out # STDOUT
#SBATCH -e umaze-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; import time; pyh.Umaze(saveLevel = 1); print(time.localtime());"
