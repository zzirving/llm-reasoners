set -e
set -x
#!/bin/bash

#MODEL_REPO="meta-llama/Meta-Llama-3.1-8B-Instruct"
MODEL_REPO="tkitsers/Llemma-metamath-7b"
#MODEL_REPO="tkitsers/Llemma-metamath-34b"

PORT=30020
tenser_parellel_size=1

CUDA_VISIBLE_DEVICES=3 python3 -m sglang.launch_server --model-path $MODEL_REPO --port $PORT --tp-size $tenser_parellel_size --trust-remote-code



