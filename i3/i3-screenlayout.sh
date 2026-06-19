#!/bin/sh

# Let X/DP/VRR settle after login

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
  --output DisplayPort-1 --off \
  --output DisplayPort-2 --off \
  --output HDMI-A-1-1 --off \
  --output DisplayPort-1-3 --off \
  --output DisplayPort-1-4 --off \
  --output DisplayPort-1-5 --off
