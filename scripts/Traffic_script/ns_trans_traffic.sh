#!/bin/bash

# Create a new conda environment named 'non_trans' with Python 3.7
conda create -n non_trans python=3.7 -y

# Activate the newly created environment
source activate non_trans

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Upgrade torch using pip3
pip3 install --upgrade torch

# Run the Python script with the provided arguments
python3 run1.py \
  --is_training 1 \
  --model_id test \
  --root_path /Users/nusma/Desktop/githubcode/Non_stationary_transformers/Nonstationary_Transformers/traffic.csv \
  --data_path /Users/nusma/Desktop/githubcode/Non_stationary_transformers/Nonstationary_Transformers/traffic.csv \
  --model ns_Transformer \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --gpu 0 \
  --des 'Exp_h128_l2' \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2 \
  --itr 1
