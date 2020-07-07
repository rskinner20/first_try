#!/bin/bash
#
#SBATCH --job-name=count
#SBATCH --output=count.out
#
#SBATCH --partition=hlwill
#SBATCH --mem=10G
#SBATCH --ntasks=4
#
#SBATCH --mail-type=ALL
#SBATCH --mail-user=rskinner@stanford.edu

ml load stata/16
stata-mp count.do
