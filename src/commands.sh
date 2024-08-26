#!/bin/bash

python train.py -s /workspace/data/cup_plush -m /workspace/output/cup_plush_mcmc -r 4 --cap_max 655846 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 5e5 --init_type random