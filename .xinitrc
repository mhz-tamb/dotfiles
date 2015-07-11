#!/bin/bash
setxkbmap -layout "us,ru" -option "grp:caps_toggle"
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session /etc/X11/Sessions/dwm
