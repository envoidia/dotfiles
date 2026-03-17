#!/usr/bin/env fish

set -l util $(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
set -l vram $(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits 2>/dev/null | awk '{printf "%.2f", $1/1024}')

echo $util% $vram"GB"
