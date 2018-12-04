#!/bin/bash
#SBATCH --job-name=j_SPAdes
#SBATCH --partition=highmem
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=72:00:00
#SBATCH --output=SPAdes.%j.out
#SBATCH --error=SPAdes.%j.err

cd /home/des65576/workDir/fastq/

ml SPAdes/3.11.1-foss-2016b

spades.py -1 output_1_paired.fq -2 output_2_paired.fq -o output2 -k auto
