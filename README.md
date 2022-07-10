# useful-menus
A collection of useful menu scripts for Rofi and dmenu.

To select which menu to use (un)comment the corresponding lines in the shellscripts. The default is Rofi.

## Menu scripts
### android-emulators.sh

A launcher for Android emulators configured in `ANDROID_HOME`.

### audio-devices.sh

Selection for the default audio sink used by PulseAudio by utilizing ```pactl```.

### downloads.sh

Selection for opening a file in your downloads directory specified by `XDG_DOWNLOAD_DIR`. Uses `xdg-open` to open the selected file.

### rofi_firefox_bookmarks.sh

A rofi menu to open your Firefox bookmarks. 

https://github.com/milosz/rofi-firefox-bookmarks

### window-switcher.sh

Window switcher for X Window Managers utilizing ```wmctrl```.

### quit.sh

poweroff, reboot, suspend by menu utilizing ```systemctl```.

### ssh.sh

Selection for hosts defined in ssh config file (```~/.ssh/config```). Spawns a new terminal with a ssh session to the selected host. Variable ```TERM``` needs to be adjusted to the used terminal emulator (in this case konsole).
