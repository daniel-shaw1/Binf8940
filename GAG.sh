
#!/bin/bash
#SBATCH --job-name=j_GAG
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=08:00:00
#SBATCH --output=GAG.%j.out
#SBATCH --error=GAG.%j.err
cd $SLURM_SUBMIT_DIR


ml GAG/2.0.1-foss-2016b
python /usr/local/apps/eb/GAG/2.0.1-foss-2016b/gag.py -f spades_scaffolds.fasta -g scaffold.out.gff3 -o GAGoutput
