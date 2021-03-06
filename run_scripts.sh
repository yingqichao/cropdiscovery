# single GPU training
#python train.py -opt options/train/train_IRN_x4.yml

# distributed training
# CVPR
#CUDA_VISIBLE_DEVICES=1,3,4 python -m torch.distributed.launch --master_port 27766 --nproc_per_node=3 train.py -opt options/train/train_IRNclr_x4.yml -val 0 --launcher pytorch

# PAMI
# train
#CUDA_VISIBLE_DEVICES=3 python -m torch.distributed.launch --master_port 2027 --nproc_per_node=1 train.py -opt options/train/train_IRN+_x4.yml -val 0 --launcher pytorch
# generate images
#CUDA_VISIBLE_DEVICES=1,3,4 python -m torch.distributed.launch --master_port 25577 --nproc_per_node=3 train.py -opt options/train/train_IRN+_x4.yml -val 0 --launcher pytorch

# eval
#CUDA_VISIBLE_DEVICES=4 python -m torch.distributed.launch --master_port 1750 --nproc_per_node=1 train.py -opt options/train/train_IRN+_x4.yml -val 1 --launcher pytorch

# ICASSP_NOWAY
#python train.py -opt options/train/train_IRNcrop_x4.yml
CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch --nproc_per_node=1 train.py -opt options/train/train_IRNcrop_x4.yml --launcher pytorch

# ICASSP_RHI
# CUDA_VISIBLE_DEVICES=4 python -m torch.distributed.launch --master_port 11149 --nproc_per_node=1 train.py -opt options/train/train_IRNrhi_x4.yml --launcher pytorch

