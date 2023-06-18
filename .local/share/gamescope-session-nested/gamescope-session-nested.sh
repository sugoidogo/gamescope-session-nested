#!/bin/bash

set -x
cd "$(dirname "$(readlink -f -- "$0")")"

if pgrep -x steam; then steam -shutdown; fi
while pgrep -x steam; do sleep 1; done
pkill -xe gamescope || true

chimera="/usr/share/gamescope-session/gamescope-session-script"
if [ -f "$chimera" ] ; then
    SESSIONCMD=$chimera
else
    SESSIONCMD='gamescope-session'
fi

systemd-run --user --pty --pipe \
    --setenv DISPLAY=$DISPLAY \
    --setenv WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
    --setenv PATH="$PWD:$PATH" \
    $SESSIONCMD

systemd-run --user \
    --setenv DISPLAY=$DISPLAY \
    --setenv WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
    steam -silent -nofriendsui -nochatui