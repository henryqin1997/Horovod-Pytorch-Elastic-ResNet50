#!/usr/bin/env bash
NUMCARD=echo "nvidia-smi --query-gpu=name --format=csv,noheader | wc -l"
echo "localhost:$NUMCARD"