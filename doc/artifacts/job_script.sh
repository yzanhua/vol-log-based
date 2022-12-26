#!/bin/bash  -l

#SBATCH -A m844
#SBATCH -t 00:15:00
#SBATCH --nodes=1
#SBATCH -C cpu
#SBATCH --qos=debug
#SBATCH --mail-type=begin,end,fail
#SBATCH --mail-user=zanhua@u.northwestern.edu

cd $PWD

if test "x$SLURM_NTASKS_PER_NODE" = x ; then
   SLURM_NTASKS_PER_NODE=64
fi

# calculate the total number of MPI processes
NP=$(($SLURM_JOB_NUM_NODES * $SLURM_NTASKS_PER_NODE))

echo "------------------------------------------------------"
echo "---- Running on Cori ----"
echo "---- SLURM_JOB_QOS           = $SLURM_JOB_QOS"
echo "---- SLURM_CLUSTER_NAME      = $SLURM_CLUSTER_NAME"
echo "---- SLURM_JOB_PARTITION     = $SLURM_JOB_PARTITION"
echo "---- SBATCH_CONSTRAINT       = $SBATCH_CONSTRAINT"
echo "---- SLURM_JOB_NUM_NODES     = $SLURM_JOB_NUM_NODES"
echo "---- SLURM_NTASKS_PER_NODE   = $SLURM_NTASKS_PER_NODE"
echo "---- Number of MPI processes = $NP"
echo "------------------------------------------------------"
echo ""

ulimit -c unlimited
module unload darshan

EXE_PATH=/global/u2/z/zanhua/VOLS/E3SM/install/bin
DATA_PATH=/global/u2/z/zanhua/VOLS/E3SM/E3SM-IO/datasets
#DATA_PATH=/global/cfs/cdirs/m844/E3SM
E3SM_IO_EXE=/tmp/${USER}_e3smio_exe

sbcast -v ${EXE_PATH}/e3sm_io ${E3SM_IO_EXE}

EXE_OPTS="-c 4 --cpu_bind=cores ${E3SM_IO_EXE}"


OUT_DIR=/pscratch/sd/z/zanhua/FS_1M_16/e3sm_io


srun -n $NP $EXE_OPTS ${DATA_PATH}/map_f_case_16p.h5 -k -o ${OUT_DIR}/can_F_out.h5 -a hdf5 -x log -r 25
#srun -n $NP $EXE_OPTS ${DATA_PATH}/map_g_case_16p.h5 -k -o ${OUT_DIR}/can_G_out.h5 -a hdf5 -x log -r 25
#srun -n $NP $EXE_OPTS ${DATA_PATH}/map_i_case_16p.h5 -k -o ${OUT_DIR}/can_I_out.h5 -a hdf5 -x log -r 25