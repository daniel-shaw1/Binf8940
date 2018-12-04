





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
module load picard/2.16.0-Java-1.8.0_144

java -jar /usr/local/apps/eb/picard/2.16.0-Java-1.8.0_144/picard.jar CreateSequenceDictionary R=CryptoDB-39_CbaileyiTAMU-09Q1_Genome.fasta O=dict.dict
samtools faidx CryptoDB-39_CbaileyiTAMU-09Q1_Genome.fasta

