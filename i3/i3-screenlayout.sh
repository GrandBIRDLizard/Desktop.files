#!/bin/bash

# Let X/DP/VRR settle after login

echo sleep 0.2

xrandr \
  --output DisplayPort-0 \
    --primary \
    --mode 2560x1440 \
    --rate 120 \
    --pos 1080x385 \
    --rotate normal \
  --output HDMI-A-0 \
    --mode 1920x1080 \
    --pos 0x0 \
    --rotate left \
