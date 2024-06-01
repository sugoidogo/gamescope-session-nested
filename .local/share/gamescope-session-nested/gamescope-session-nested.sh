#!/bin/bash
set -x

source ~/.config/environment.d/*.conf
cd "$(dirname "$(readlink -f -- "$0")")"

if pgrep -x steam; then steam -shutdown; fi
while pgrep -x steam; do sleep 1; done
pkill -xe gamescope || true

gamescope -W $SCREEN_WIDTH -H $SCREEN_HEIGHT -fe -- steam -steamos3 -steampal -steamdeck -gamepadui

systemd-run --user \
    --setenv DISPLAY=$DISPLAY \
    --setenv WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
    steam -silent -nofriendsui -nochatui
