#!/bin/bash

# python train.py -s /workspace/data/mipnerf/kitchen -m /workspace/output/01-24/mipnerf/kitchen_full -r 2 --cap_max 1800000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm  --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval
# python render.py -s /workspace/data/mipnerf/kitchen -m /workspace/output/01-24/mipnerf/kitchen_full -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/kitchen/masks_gt
# python metrics.py -m /workspace/output/01-24/mipnerf/kitchen_full --use_masks



# python train.py -s /workspace/data/mipnerf/kitchen -m /workspace/output/01-24/mipnerf/kitchen_clustering -r 2 --use_masks --mask_path /workspace/data/mipnerf/kitchen/masks_clustering --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval
# python render.py -s /workspace/data/mipnerf/kitchen -m /workspace/output/01-24/mipnerf/kitchen_clustering -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/kitchen/masks_gt
# python metrics.py -m /workspace/output/01-24/mipnerf/kitchen_clustering --use_masks

# python train.py -s /workspace/data/mipnerf/bicycle -m /workspace/output/01-24/mipnerf/bicycle_clustering -r 2 --use_masks --mask_path /workspace/data/mipnerf/bicycle/masks_clustering --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval  --test_images _DSC8679 _DSC8689 _DSC8691 _DSC8693 _DSC8697 _DSC8703 _DSC8719 _DSC8727 _DSC8731 _DSC8739 _DSC8762 _DSC8768 _DSC8786 _DSC8796 _DSC8802 _DSC8804 _DSC8808 _DSC8820 _DSC8850 _DSC8873
# python render.py -s /workspace/data/mipnerf/bicycle -m /workspace/output/01-24/mipnerf/bicycle_clustering -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/bicycle/masks_gt  --test_images _DSC8679 _DSC8689 _DSC8691 _DSC8693 _DSC8697 _DSC8703 _DSC8719 _DSC8727 _DSC8731 _DSC8739 _DSC8762 _DSC8768 _DSC8786 _DSC8796 _DSC8802 _DSC8804 _DSC8808 _DSC8820 _DSC8850 _DSC8873
# python metrics.py -m /workspace/output/01-24/mipnerf/bicycle_clustering --use_masks


# python train.py -s /workspace/data/mipnerf/bonsai -m /workspace/output/01-24/mipnerf/bonsai_clustering -r 2 --use_masks --mask_path /workspace/data/mipnerf/bonsai/masks_clustering --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm_clustering --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval  --test_images DSCF5574 DSCF5595 DSCF5604 DSCF5607 DSCF5643 DSCF5646 DSCF5662 DSCF5688 DSCF5693 DSCF5701 DSCF5710 DSCF5714 DSCF5718 DSCF5749 DSCF5764 DSCF5765 DSCF5772 DSCF5795 DSCF5818 DSCF5856
# python render.py -s /workspace/data/mipnerf/bonsai -m /workspace/output/01-24/mipnerf/bonsai_clustering -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/bonsai/masks_gt  --test_images DSCF5574 DSCF5595 DSCF5604 DSCF5607 DSCF5643 DSCF5646 DSCF5662 DSCF5688 DSCF5693 DSCF5701 DSCF5710 DSCF5714 DSCF5718 DSCF5749 DSCF5764 DSCF5765 DSCF5772 DSCF5795 DSCF5818 DSCF5856
# python metrics.py -m /workspace/output/01-24/mipnerf/bonsai_clustering --use_masks
# scp -r /workspace/output/01-24/mipnerf/bonsai_clustering nc194:~/01-24/mipnerf/bonsai_clustering

python train.py -s /workspace/data/mipnerf/garden -m /workspace/output/01-24/mipnerf/garden_clustering -r 2 --use_masks --mask_path /workspace/data/mipnerf/garden/masks_clustering --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm_clustering --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval  --test_images DSC07957 DSC07965 DSC07990 DSC07993 DSC08002 DSC08011 DSC08017 DSC08021 DSC08032 DSC08048 DSC08055 DSC08070 DSC08073 DSC08080 DSC08090 DSC08097 DSC08103 DSC08118 DSC08134 DSC08140
python render.py -s /workspace/data/mipnerf/garden -m /workspace/output/01-24/mipnerf/garden_clustering -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/garden/masks_gt  --test_images DSC07957 DSC07965 DSC07990 DSC07993 DSC08002 DSC08011 DSC08017 DSC08021 DSC08032 DSC08048 DSC08055 DSC08070 DSC08073 DSC08080 DSC08090 DSC08097 DSC08103 DSC08118 DSC08134 DSC08140
python metrics.py -m /workspace/output/01-24/mipnerf/garden_clustering --use_masks
scp -r /workspace/output/01-24/mipnerf/garden_clustering nc194:~/01-24/mipnerf/garden_clustering

python train.py -s /workspace/data/mipnerf/kitchen -m /workspace/output/01-24/mipnerf/kitchen_gt -r 2 --use_masks --mask_path /workspace/data/mipnerf/kitchen/masks_gt --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm_clustering --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval
python render.py -s /workspace/data/mipnerf/kitchen -m /workspace/output/01-24/mipnerf/kitchen_gt -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/kitchen/masks_gt
python metrics.py -m /workspace/output/01-24/mipnerf/kitchen_gt --use_masks
scp -r /workspace/output/01-24/mipnerf/kitchen_gt nc194:~/01-24/mipnerf/kitchen_gt

python train.py -s /workspace/data/mipnerf/garden -m /workspace/output/01-24/mipnerf/garden_gt -r 2 --use_masks --mask_path /workspace/data/mipnerf/garden/masks_gt --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm_clustering --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval --test_images DSC07957 DSC07965 DSC07990 DSC07993 DSC08002 DSC08011 DSC08017 DSC08021 DSC08032 DSC08048 DSC08055 DSC08070 DSC08073 DSC08080 DSC08090 DSC08097 DSC08103 DSC08118 DSC08134 DSC08140
python render.py -s /workspace/data/mipnerf/garden -m /workspace/output/01-24/mipnerf/garden_gt -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/garden/masks_gt --test_images DSC07957 DSC07965 DSC07990 DSC07993 DSC08002 DSC08011 DSC08017 DSC08021 DSC08032 DSC08048 DSC08055 DSC08070 DSC08073 DSC08080 DSC08090 DSC08097 DSC08103 DSC08118 DSC08134 DSC08140
python metrics.py -m /workspace/output/01-24/mipnerf/garden_gt --use_masks
scp -r /workspace/output/01-24/mipnerf/garden_gt nc194:~/01-24/mipnerf/bonsai_clustegarden_gtring

python train.py -s /workspace/data/mipnerf/bicycle -m /workspace/output/01-24/mipnerf/bicycle_gt -r 2 --use_masks --mask_path /workspace/data/mipnerf/bicycle/masks_gt --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm_clustering --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval --test_images _DSC8679 _DSC8689 _DSC8691 _DSC8693 _DSC8697 _DSC8703 _DSC8719 _DSC8727 _DSC8731 _DSC8739 _DSC8762 _DSC8768 _DSC8786 _DSC8796 _DSC8802 _DSC8804 _DSC8808 _DSC8820 _DSC8850 _DSC8873
python render.py -s /workspace/data/mipnerf/bicycle -m /workspace/output/01-24/mipnerf/bicycle_gt -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/bicycle/masks_gt --test_images _DSC8679 _DSC8689 _DSC8691 _DSC8693 _DSC8697 _DSC8703 _DSC8719 _DSC8727 _DSC8731 _DSC8739 _DSC8762 _DSC8768 _DSC8786 _DSC8796 _DSC8802 _DSC8804 _DSC8808 _DSC8820 _DSC8850 _DSC8873
python metrics.py -m /workspace/output/01-24/mipnerf/bicycle_gt --use_masks
scp -r /workspace/output/01-24/mipnerf/bonsai_clustering nc194:~/01-24/mipnerf/bicycle_gt

python train.py -s /workspace/data/mipnerf/bonsai -m /workspace/output/01-24/mipnerf/bonsai_gt -r 2 --use_masks --mask_path /workspace/data/mipnerf/bonsai/masks_gt --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm_clustering --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval --test_images DSCF5574 DSCF5595 DSCF5604 DSCF5607 DSCF5643 DSCF5646 DSCF5662 DSCF5688 DSCF5693 DSCF5701 DSCF5710 DSCF5714 DSCF5718 DSCF5749 DSCF5764 DSCF5765 DSCF5772 DSCF5795 DSCF5818 DSCF5856
python render.py -s /workspace/data/mipnerf/bonsai -m /workspace/output/01-24/mipnerf/bonsai_gt -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/bonsai/masks_gt --test_images DSCF5574 DSCF5595 DSCF5604 DSCF5607 DSCF5643 DSCF5646 DSCF5662 DSCF5688 DSCF5693 DSCF5701 DSCF5710 DSCF5714 DSCF5718 DSCF5749 DSCF5764 DSCF5765 DSCF5772 DSCF5795 DSCF5818 DSCF5856
python metrics.py -m /workspace/output/01-24/mipnerf/bonsai_gt --use_masks
scp -r /workspace/output/01-24/mipnerf/bonsai_gt nc194:~/01-24/mipnerf/bonsai_gt

python train.py -s /workspace/data/mipnerf/garden -m /workspace/output/01-24/mipnerf/garden_full -r 2 --cap_max 5200000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm  --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval --test_images DSC07957 DSC07965 DSC07990 DSC07993 DSC08002 DSC08011 DSC08017 DSC08021 DSC08032 DSC08048 DSC08055 DSC08070 DSC08073 DSC08080 DSC08090 DSC08097 DSC08103 DSC08118 DSC08134 DSC08140 --start_checkpoint /workspace/output/01-24/mipnerf/garden_full/chkpnt7000.pth
python render.py -s /workspace/data/mipnerf/garden -m /workspace/output/01-24/mipnerf/garden_full -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/garden/masks_gt --test_images DSC07957 DSC07965 DSC07990 DSC07993 DSC08002 DSC08011 DSC08017 DSC08021 DSC08032 DSC08048 DSC08055 DSC08070 DSC08073 DSC08080 DSC08090 DSC08097 DSC08103 DSC08118 DSC08134 DSC08140
python metrics.py -m /workspace/output/01-24/mipnerf/garden_full --use_masks
scp -r /workspace/output/01-24/mipnerf/garden_full nc194:~/01-24/mipnerf/garden_full

python train.py -s /workspace/data/mipnerf/bonsai -m /workspace/output/01-24/mipnerf/bonsai_full -r 2 --cap_max 1300000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm  --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval --test_images DSCF5574 DSCF5595 DSCF5604 DSCF5607 DSCF5643 DSCF5646 DSCF5662 DSCF5688 DSCF5693 DSCF5701 DSCF5710 DSCF5714 DSCF5718 DSCF5749 DSCF5764 DSCF5765 DSCF5772 DSCF5795 DSCF5818 DSCF5856
python render.py -s /workspace/data/mipnerf/bonsai -m /workspace/output/01-24/mipnerf/bonsai_full -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/bonsai/masks_gt --test_images DSCF5574 DSCF5595 DSCF5604 DSCF5607 DSCF5643 DSCF5646 DSCF5662 DSCF5688 DSCF5693 DSCF5701 DSCF5710 DSCF5714 DSCF5718 DSCF5749 DSCF5764 DSCF5765 DSCF5772 DSCF5795 DSCF5818 DSCF5856
python metrics.py -m /workspace/output/01-24/mipnerf/bonsai_full --use_masks
scp -r /workspace/output/01-24/mipnerf/bonsai_full nc194:~/01-24/mipnerf/bonsai_full

python train.py -s /workspace/data/mipnerf/bicycle -m /workspace/output/01-24/mipnerf/bicycle_full -r 2 --cap_max 5900000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm  --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval --test_images _DSC8679 _DSC8689 _DSC8691 _DSC8693 _DSC8697 _DSC8703 _DSC8719 _DSC8727 _DSC8731 _DSC8739 _DSC8762 _DSC8768 _DSC8786 _DSC8796 _DSC8802 _DSC8804 _DSC8808 _DSC8820 _DSC8850 _DSC8873
python render.py -s /workspace/data/mipnerf/bicycle -m /workspace/output/01-24/mipnerf/bicycle_full -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/bicycle/masks_gt --test_images _DSC8679 _DSC8689 _DSC8691 _DSC8693 _DSC8697 _DSC8703 _DSC8719 _DSC8727 _DSC8731 _DSC8739 _DSC8762 _DSC8768 _DSC8786 _DSC8796 _DSC8802 _DSC8804 _DSC8808 _DSC8820 _DSC8850 _DSC8873
python metrics.py -m /workspace/output/01-24/mipnerf/bicycle_full --use_masks
scp -r /workspace/output/01-24/mipnerf/bicycle_full nc194:~/01-24/mipnerf/bicycle_full

# python train.py -s /workspace/data/mipnerf/stump -m /workspace/output/01-24/mipnerf/stump_clustering -r 2 --use_masks --mask_path /workspace/data/mipnerf/stump/masks_clustering --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm_clustering --iterations 15000 --save_iterations 7000 15000 30000 --checkpoint_iterations 7000 15000 20000  --test_iterations 5000 7000 15000 --eval



# scp -r /workspace/output/01-15/mipnerf/kitchen_psp nc194:~/kitchen_psp

# scp -r /workspace/output/01-15/mipnerf/kitchen_gt nc194:~/kitchen_gt

# python train.py -s /workspace/data/mipnerf/kitchen -m /workspace/output/01-15/mipnerf/kitchen_no_floor -r 2 --use_masks --mask_path /workspace/data/mipnerf/kitchen/masks_no_floor --cap_max 500000 --scale_reg 0.01 --opacity_reg 0.01 --noise_lr 2000 --init_type sfm  --save_iterations 2000 7000 15000 30000 --checkpoint_iterations 15000 30000  --test_iterations 5000 7000 15000 --eval
# python render.py -s /workspace/data/mipnerf/kitchen -m /workspace/output/01-15/mipnerf/kitchen_no_floor -r 2 --eval --skip_train --use_masks --mask_path /workspace/data/mipnerf/kitchen/masks_no_floor
# python metrics.py -m /workspace/output/01-15/mipnerf/kitchen_no_floor --use_masks

# scp -r /workspace/output/01-15/mipnerf/kitchen_no_floor nc194:~/kitchen_no_floor

# scp -r /workspace/output/01-15 nc194:~/kitchen