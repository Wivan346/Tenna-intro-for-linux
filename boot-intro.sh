#!/bin/bash
VIDEO_PATH="PLACEHOLDER"

export DRM_CARD=$(ls /dev/dri/card* | head -n 1)

mpv \
    --vo=gpu \
    --gpu-context=drm \
    --drm-connector="WRITE NAME YOUR MONITOR, ALSO DELETE QUOTES" \
    --fs \
    --no-border \
    --osc=no \
    --input-default-bindings=no \
    --keep-open=no \
    --really-quiet \
    --no-terminal \
"$VIDEO_PATH" > /dev/null 2>&1
