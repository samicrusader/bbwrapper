#!/usr/bin/bash

# https://stackoverflow.com/a/4774063
export SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd $SCRIPTPATH

# zap Steam's performance overlay bullshit
unset LD_PRELOAD
# force GTK to FUCKING RENDER to my goddamned Xephyr session
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11

exec xinit $SCRIPTPATH/xinitrc -- /usr/bin/Xephyr -ac -screen 1024x576 -reset :5
