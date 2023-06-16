#!/bin/bash

set -xeuo pipefail

systemd-run --user --pty --pipe \
    --setenv GAMESCOPE="$(which gamescope)" \
    --setenv PATH="~/.local/share/gamescope-session-nested:$PATH" \
    gamescope-session

systemd-run --user steam -silent