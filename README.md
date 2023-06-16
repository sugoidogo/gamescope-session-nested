# Nested Gamescope Session from Desktop
This is a simple wrapper around the `gamescope-session` script present in SteamOS 3, ChimeraOS, and the `gamescope-session-git` AUR package. This package adds an application menu entry that allows you to use the gamescope session from your desktop, enabling you to do things like record your session using software like OBS without losing any gamescope session features.
## Install
Steam Deck users can download the [quickstart file](https://sugoidogo.github.io/gamescope-session-nested/gsn-installer.desktop) and double-click it from the file manager to start the install.

Desktop users can run the following command in a terminal:
```bash
curl https://sugoidogo.github.io/gamescope-session-nested/gsn-installer.sh | bash
```
## Usage Notes
The "Switch to desktop" button will not simply exit the gamescope session. On the steam deck, it starts a whole new desktop session and drops you in, causing you to lose any other open programs.

To exit cleanly, enable "developer mode" in the system settings inside the gamescope session, so that the "Restart Steam" option appears in the power menu. Steam will shutdown normally, and the wrapper script will start up desktop steam for you.