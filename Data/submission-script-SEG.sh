#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=12:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Sandozenv/bin/activate
pip install albumentations

work_directory="/home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Models/SEG_illustrations_pages_3/"
mkdir -p ${work_directory}
cd ${work_directory}

OUTPUT_NAME="SEG_illustrations_pages_3"

XML_FOLDER="/home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Data/illustrations_pages"
echo "KETOS training"
srun ketos segtrain -f alto -d cuda "${XML_FOLDER}/*.xml"

