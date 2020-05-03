#!/bin/sh

#pip install sentencepiece==0.1.82
#apt-get update
#apt-get install -y sox 
#pip install sox

rm -f -r /cnvrg/output/datasets
mkdir /cnvrg/output/datasets

rm -f -r /cnvrg/output/models
mkdir /cnvrg/output/models

echo start data preparation

python3 /cnvrg/recipes/models/utilities/prepare_librispeech_wp_and_official_lexicon.py \
        --data_dst /cnvrg/output/datasets \
        --model_dst /cnvrg/output/models \
        --nbest 10 \
        --wp 10000

echo end data preparation