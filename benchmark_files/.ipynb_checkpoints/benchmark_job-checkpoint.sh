#!/bin/bash
#SBATCH -p htc
#SBATCH -q public
#SBATCH -G 1
#SBATCH -A grp_hackathon2025
#SBATCH --reservation=hackathon2025
#SBATCH -t 0-00:10:00
#SBATCH -c 1
#SBATCH -o /home/mrajanva/Desktop/AI_Accelerated_Hackathon/ai-tutor-hackathon/benchmark_files/slurm-%j.out
#SBATCH -e /home/mrajanva/Desktop/AI_Accelerated_Hackathon/ai-tutor-hackathon/benchmark_files/slurm-%j.err

# --- CPU BENCHMARK ---
echo "--- STARTING CPU BENCHMARK ---"
/usr/bin/time -p bash -c 'module load mamba/latest && mamba run -n genai25.06 python3 /home/mrajanva/Desktop/AI_Accelerated_Hackathon/ai-tutor-hackathon/benchmark_files/cpu_benchmark.py'
echo "--- FINISHED CPU BENCHMARK ---"

echo ""
# --- GPU BENCHMARK ---
echo "--- STARTING GPU BENCHMARK ---"
/usr/bin/time -p bash -c 'module load mamba/latest && mamba run -n genai25.06 python3 /home/mrajanva/Desktop/AI_Accelerated_Hackathon/ai-tutor-hackathon/benchmark_files/gpu_benchmark.py'
echo "--- FINISHED GPU BENCHMARK ---"
