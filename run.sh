#!/usr/bin/env bash
horovodrun -np 8 --min-np 4 --max-np 8 --host-discovery-script discover_hosts.sh \
python3 train_resnet_imagenet.py \
--train-dir /workspace/data/ILSVRC2012/train \
--val-dir /workspace/data/ILSVRC2012/validation \

