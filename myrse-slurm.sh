#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
<<<<<<< HEAD:myrse-slurm.sh
#SBATCH --cpus-per-task=1 #number of cpus for this task
#SBATCH -J "rse"   # job name
=======
#SBATCH -J "rplpl"   # job name
>>>>>>> upstream/main:rplparallel-slurm.sh

## /SBATCH -p general # partition (queue)
#SBATCH -o rplpl-slurm.%N.%j.out # STDOUT
#SBATCH -e rplpl-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
<<<<<<< HEAD:myrse-slurm.sh
=======
import DataProcessingTools as DPT; \
import os; \
>>>>>>> upstream/main:rplparallel-slurm.sh
import time; \
import os; \
t0 = time.time(); \
print(time.localtime()); \
DPT.objects.processDirs(dirs=None, objtype=pyh.RPLParallel, saveLevel=1); \
DPT.objects.processDirs(dirs=None, objtype=pyh.Unity, saveLevel=1); \
pyh.EDFSplit(); \
os.chdir('session01'); \
pyh.aligning_objects(); \
pyh.raycast(1); \
print(time.localtime()); \
<<<<<<< HEAD:myrse-slurm.sh
print(time.time()-t0);"
=======
print(time.time()-t0);"

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:018084650241:awsnotify --message "RPLParallelJobDone"

>>>>>>> upstream/main:rplparallel-slurm.sh