#!/usr/bin/env bash
cvd=0
CUDA_VISIBLE_DEVICES=${cvd} python3.7 -m GAM.experiments.run_train_gam_graph --seed `expr ${cvd} + 123` --dataset_name pubmed --data_path=/home/dongkwan/graph-data/PubMed --min_confidence_new_label=0.33 "$@" 2>&1 | tee -a pubmed_`date "+%s"`.log