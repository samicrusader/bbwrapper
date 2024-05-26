#!/bin/bash

# set bg
bsetroot -mod 4 4 -from rgb:36/39/39 -to rgb:30/30/36

# run pavu and then suicide blackbox
/usr/bin/pavucontrol -m && kill $PPID
