#!/usr/bin/env bash
MEMORY_THRESHOLD=10000
#hosts=(
#    localhost
#)
COUNT=0
for i in "${hosts[@]}"; do
    NUMCARD=echo "nvidia-smi --query-gpu=name --format=csv,noheader | wc -l"
    for j in {1..$NUMCARD}
    do
        free_mem=$(nvidia-smi --query-gpu=memory.free --format=csv -i $j | grep -Eo [0-9]+)
        if [$free_mem -ge $MEMORY_THRESHOLD]
        then
            COUNT=1+$COUNT
        fi
    done
done
echo "localhost:$COUNT"