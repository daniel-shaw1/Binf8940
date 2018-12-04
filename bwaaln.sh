#!/bin/bash
#SBATCH --job-name=bwnaln
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=08:00:00
#SBATCH --output=bwaaln.%j.out
#SBATCH --error=bwaaln.%j.err

cd /home/des65576/workDir/reference/

ml SAMtools/0.1.19-foss-2016b
module load BWA/0.7.15-foss-2016b

bwa index CryptoDB-39_CbaileyiTAMU-09Q1_Genome.fasta
time bwa aln CryptoDB-39_CbaileyiTAMU-09Q1_Genome.fasta Cbai_G_1.fastq > Cbai_G_1.sai
time bwa aln CryptoDB-39_CbaileyiTAMU-09Q1_Genome.fasta Cbai_G_2.fastq > Cbai_G_2.sai
time bwa sampe CryptoDB-39_CbaileyiTAMU-09Q1_Genome.fasta Cbai_G_1.sai Cbai_G_2.sai Cbai_G_1.fastq Cbai_G_2.fastq > out_algn_aln.sam
samtools view –b –S out_algn_aln.sam > out_algn_aln.bam
samtools sort out_algn_aln.bam out_algn_aln.sorted
samtools index out_algn_aln.sorted.bam
