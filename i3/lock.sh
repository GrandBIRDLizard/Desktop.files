#!/usr/bin/bash

BLANK='#00000000'
CLEAR='#ffffff22'

DEFAULT='#caa9faE6'    # pastel lavender
TEXT='#b35876DD'        # light/dark pink Light: #ff7fa8DD dark: #b35876DD
VERIFYING='#9fe6ffE6'   # cyan
WRONG='#ff7fa8DD'       # rose pink

i3lock \
    --insidever-color="$CLEAR" \
    --ringver-color="$VERIFYING" \
    \
    --insidewrong-color="$CLEAR" \
    --ringwrong-color="$WRONG" \
    \
    --inside-color="$BLANK" \
    --ring-color="$DEFAULT" \
    --line-color="$BLANK" \
    --separator-color="$TEXT" \
    \
    --verif-color="$DEFAULT" \
    --wrong-color="$TEXT" \
    --time-color="$TEXT" \
    --date-color="#b3ffccDD" \
    --layout-color="$TEXT" \
    --keyhl-color="#b3ffccDD" \
    --bshl-color="$WRONG" \
    \
    --screen 1 \
    --blur 9 \
    --clock \
    --indicator \
    --time-str="%H:%M" \
    --date-str="%A, %Y-%m-%d"
