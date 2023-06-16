#!/bin/bash
set -xeuo pipefail
git clone https://github.com/sugoidogo/gamescope-session-nested.git || true
cd gamescope-session-nested
git pull
cp -rv .local ~/
chmod +x ~/.local/share/gamescope-session-nested/*
update-desktop-database ~/.local/share/applications
read -rp "Install Complete"