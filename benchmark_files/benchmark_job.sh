#!/bin/bash
#SBATCH -p general
#SBATCH -q public
#SBATCH -G 1
#SBATCH -A grp_hackathon2025
#SBATCH --reservation=hackathon2025
#SBATCH -t 0-00:10:00
#SBATCH -c 1
#SBATCH -o /home/mrajanva/Desktop/AI_Accelerated_Hackathon/ai-tutor-hackathon/benchmark_files/slurm-%j.out
#SBATCH -e /home/mrajanva/Desktop/AI_Accelerated_Hackathon/ai-tutor-hackathon/benchmark_files/slurm-%j.err

# Load the necessary modules and environment
module load mamba/latest
source activate rapids25.02

# --- CPU BENCHMARK ---
echo "--- STARTING CPU BENCHMARK ---"
/usr/bin/time -p python3 /home/mrajanva/Desktop/AI_Accelerated_Hackathon/ai-tutor-hackathon/benchmark_files/cpu_benchmark.py 2>&1
echo "--- FINISHED CPU BENCHMARK ---"

echo ""
# --- GPU BENCHMARK ---
echo "--- STARTING GPU BENCHMARK ---"
/usr/bin/time -p python3 /home/mrajanva/Desktop/AI_Accelerated_Hackathon/ai-tutor-hackathon/benchmark_files/gpu_benchmark.py 2>&1
echo "--- FINISHED GPU BENCHMARK ---"
