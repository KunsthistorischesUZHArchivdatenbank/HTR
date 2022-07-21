#!/bin/env bash
#SBATCH --partition=public-gpu
#SBATCH --time=40:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=0

module load fosscuda/2020b Python/3.8.6
source ~/Sandozenv/bin/activate

work_directory="/home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Models/AllLines"
mkdir -p ${work_directory}
cd ${work_directory}

OUTPUT_NAME="AllLines"
XML_FOLDER="/home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Data/*/"

echo "KETOS training"

srun ketos train -o $OUTPUT_NAME -f alto cuda:0 -t /home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Split/train_all.txt -e /home/users/j/jacsont/Kunsthistorisches-UZH_Archivdatenbank/HTR/Split/val_all.txt -d cuda "${XML_FOLDER}/*.xml"
