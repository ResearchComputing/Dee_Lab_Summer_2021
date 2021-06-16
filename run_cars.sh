#!/bin/bash
#SBATCH --time=00:01:00
#SBATCH --partition=shas
#SBATCH --ntasks=1                      # Specify Summit haswell nodes
#SBATCH --job-name=test                   # Job submission name
#SBATCH --output=test.%j.out            # Output file name with Job ID


#Run a python script:
module purge
module load python/3.6.5
echo "python result:"
python cars_mpg.py pinto 34

#Run an R script:
module purge
module load R/4.0.4
echo "R result:"
Rscript cars_mpg.R nova 25

#Run a Matlab script
module purge
module load matlab/R2018b
echo "Matlab result:"
matlab -nodisplay -nodesktop -r "cars_mpg;"
