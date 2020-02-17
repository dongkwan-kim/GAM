#!/usr/bin/env bash
cvd=0
CUDA_VISIBLE_DEVICES=${cvd} python3.7 -m GAM.experiments.run_train_gam_graph --seed `expr ${cvd} + 123` --dataset_name cora --data_path=/home/dongkwan/graph-data/Cora --min_confidence_new_label=0.4 "$@" 2>&1 | tee -a cora_`date "+%s"`.log