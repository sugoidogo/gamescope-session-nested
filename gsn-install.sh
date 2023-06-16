#!/bin/bash
set -xeuo pipefail
git clone https://github.com/sugoidogo/gamescope-session-nested.git
cd gamescope-session-nested
cp -rv .local ~/
chmod +x ~/.local/share/gamescope-session-nested/*
update-desktop-database ~/.local/share/applications
read -rp "Install Complete"