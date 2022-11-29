#!/bin/bash
# https://github.com/l1na-forever/stable-diffusion-rocm-docker

podman run -d \
    --network=host \
    --device=/dev/kfd \
    --device=/dev/dri \
    --group-add=video \
    --ipc=host \
    --cap-add=SYS_PTRACE \
    --security-opt seccomp=unconfined \
    --name stable-diffusion-web \
    -v ./outputs:/sd/outputs \
    -v ./inputs:/sd/inputs \
stable-diffusion-web:latest
