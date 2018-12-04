#!/bin/bash
#SBATCH --job-name=j_canu
#SBATCH --partition=highmem
#SBATCH --ntasks=1
#SBATCH --mem=50gb
#SBATCH --time=72:00:00
#SBATCH --output=canu.%j.out
#SBATCH --error=canu.%j.err

cd $SLURM_SUBMIT_DIR

ml canu/1.7-foss-2016b

canu -p canu_output -d run2 -pacbio-raw genomeSize=9m SRR1200814_subreads.fastq
