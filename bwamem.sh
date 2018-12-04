#!/bin/bash
#SBATCH --job-name=BWA
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=08:00:00
#SBATCH --output=bwa.%j.out
#SBATCH --error=bwa.%j.err

cd /home/des65576/workDir/fastq/

ml SAMtools/0.1.19-foss-2016b
ml BWA/0.7.15-foss-2016b

samtools sort out_algn_mem.bam > out_algn_mem.sorted.bam
samtools index out_algn_mem.sorted.bam
