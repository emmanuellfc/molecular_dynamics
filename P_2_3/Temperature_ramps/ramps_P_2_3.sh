#!/bin/sh

#SBATCH --job_name=T_2_3_ramps
#SBATCH -p gpus
#SBATCH -n 1 #### 20
#SBATCH --gres=gpu:2 ### 4 o 8
#SBATCH --time 04-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=eq.emmanuel.137@gmail.com

module load singularity/hoomd/2.3.5-CUDA

hoomd.python3 Ramp_5_2.py
hoomd.python3 Ramp_5_4.py
hoomd.python3 Ramp_5_6.py
hoomd.python3 Ramp_5_8.py
hoomd.python3 Ramp_6_0.py
hoomd.python3 Ramp_6_2.py
hoomd.python3 Ramp_6_4.py
hoomd.python3 Ramp_6_6.py
hoomd.python3 Ramp_6_8.py
hoomd.python3 Ramp_7_0.py