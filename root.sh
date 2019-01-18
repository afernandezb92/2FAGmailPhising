#!/bin/sh
# script that runs as root
# The display number must be a desktop session valid, you can view with echo $DISPLAY
export PATH=$PATH:/bin/geckodriver
DISPLAY=:1 python logingmail.py &
