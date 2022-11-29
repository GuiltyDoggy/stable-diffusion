#!/bin/bash
# https://github.com/l1na-forever/stable-diffusion-rocm-docker

podman run -it \
    --network=host \
    --device=/dev/kfd \
    --device=/dev/dri \
    --group-add=video \
    --ipc=host \
    --cap-add=SYS_PTRACE \
    --security-opt seccomp=unconfined \
    -v $(pwd)/outputs:/opt/stable-diffusion/outputs \
    --name stable-diffusion \
stable-diffusion:latest
