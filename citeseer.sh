#!/usr/bin/env bash
cvd=0
CUDA_VISIBLE_DEVICES=${cvd} python3.7 -m GAM.experiments.run_train_gam_graph --seed `expr ${cvd} + 123` --dataset_name citeseer --data_path=/home/dongkwan/graph-data/CiteSeer --min_confidence_new_label=0.4 "$@" 2>&1 | tee -a citeseer_`date "+%s"`.log