#!/bin/bash

MENU="rofi -dmenu -p Emulator -l 5 -i"
#MENU="dmenu -p Emulator -i"

choice=$($ANDROID_HOME/emulator/emulator -list-avds | $MENU)
$ANDROID_HOME/emulator/emulator -avd $choice -netdelay none -netspeed full
