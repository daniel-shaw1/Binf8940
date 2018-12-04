#!/bin/bash
#SBATCH --job-name=j_genemark
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=08:00:00
#SBATCH --output=genemark.%j.out
#SBATCH --error=genemark.%j.err

cd $SLURM_SUBMIT_DIR
ml genemarkes/4.33

cp gm_key ~/.gm_key

gmes_petap.pl --ES –-sequence spades_scaffolds.fasta
