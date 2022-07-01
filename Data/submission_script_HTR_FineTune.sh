#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=20:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Topenv/bin/activate

work_directory="/home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Models/HTR_ManuscriptLines_3"
mkdir -p ${work_directory}
cd ${work_directory}

OUTPUT_NAME="output_name"
XML_FOLDER="/home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Data/CREMMA-MSS-20_data/"

echo "KETOS training"
srun ketos train -i /home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Models/HTR_ManuscriptLines_2/output_name_20.mlmodel "${XML_FOLDER}/*.xml"

