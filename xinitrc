#!/bin/bash

# force our display for blackbox
export DISPLAY=:5

# run blackbox as replacement shell
exec blackbox -rc $SCRIPTPATH/blackboxrc
