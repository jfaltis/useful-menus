# useful-menus
A collection of useful menu scripts for Rofi and dmenu.

To select which menu to use (un)comment the corresponding lines in the shellscripts. The default is Rofi.

## Menu scripts
### audio-devices.sh

Selection for the default audio sink used by PulseAudio by utilizing ```pactl```.

### window-switcher.sh

Window switcher for X Window Managers utilizing ```wmctrl```.

### quit.sh

poweroff, reboot, suspend by menu utilizing ```systemctl```.

### ssh.sh

Selection for hosts defined in ssh config file (```~/.ssh/config```). Spawns a new terminal with a ssh session to the selected host. Variable ```TERM``` needs to be adjusted to the used terminal emulator (in this case konsole).
