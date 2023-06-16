#!/bin/bash

set -xeuo pipefail

if pgrep steam; then steam -shutdown; fi
while pgrep steam; do sleep 1; done
pkill -xe gamescope || true

systemd-run --user --pty --pipe \
    --setenv GAMESCOPE="$(which gamescope)" \
    --setenv PATH="~/.local/share/gamescope-session-nested:$PATH" \
    gamescope-session

systemd-run --user steam -silent
