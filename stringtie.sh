#!/bin/bash
#SBATCH --job-name=stringtie
#SBATCH --partition=highmem
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=72:00:00
#SBATCH --output=stringtie.%j.out
#SBATCH --error=stringtie.%j.err

cd /home/des65576/1127/

ml StringTie/1.3.4d-foss-2016b

stringtie -p 8 -G chr22_with_ERCC92.gtf -e -B -o HBR_Rep1/transcripts.gtf -A HBR_Rep1/gene_abundances.tsv HBR_Rep1.bam
stringtie -p 8 -G chr22_with_ERCC92.gtf -e -B -o HBR_Rep2/transcripts.gtf -A HBR_Rep2/gene_abundances.tsv HBR_Rep2.bam
stringtie -p 8 -G chr22_with_ERCC92.gtf -e -B -o HBR_Rep3/transcripts.gtf -A HBR_Rep3/gene_abundances.tsv HBR_Rep3.bam
stringtie -p 8 -G chr22_with_ERCC92.gtf -e -B -o UHR_Rep1/transcripts.gtf -A UHR_Rep1/gene_abundances.tsv UHR_Rep1.bam
stringtie -p 8 -G chr22_with_ERCC92.gtf -e -B -o UHR_Rep2/transcripts.gtf -A UHR_Rep2/gene_abundances.tsv UHR_Rep2.bam
stringtie -p 8 -G chr22_with_ERCC92.gtf -e -B -o UHR_Rep3/transcripts.gtf -A UHR_Rep3/gene_abundances.tsv UHR_Rep3.bam
