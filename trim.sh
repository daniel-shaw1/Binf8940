#!/bin/bash
#SBATCH --job-name=Trim
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=08:00:00
#SBATCH --output=trim.%j.out
#SBATCH --error=trim.%j.err

cd /home/des65576/workDir/fastq/

ml Trimmomatic/0.36-Java-1.8.0_144

java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar PE -phred33 Cbai_G_1.fastq  Cbai_G_2.fastq output_130_paired.fq output_130_unpaired.fq output_230_paired.fq output_230_unpaired.fq ILLUMINACLIP:/usr/local/apps/eb/Trimmomatic/0.36-Java1.8.0_144/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:40
