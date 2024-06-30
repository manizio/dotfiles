#!/bin/bash

xrandr --output HDMI-A-1-0 --primary --left-of eDP-1-0 --auto

xrandr --output eDP-1-0 --mode 1680x1050
sleep 1
xrandr --output eDP-1-0 --mode 1920x1080 

xrandr --output HDMI-A-1-0 --mode 1920x1080 --rate 144.00

xrandr --output HDMI-A-1-0 --set "PRIME Synchronization" 1
xrandr --output eDP-1-0 --set "PRIME Synchronization" 1

