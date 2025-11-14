#!/bin/sh

echo "%{F#ffffff}  %{F#ffffff}$(/usr/sbin/ifconfig wlx002e2d304eda | grep "inet " | awk '{print $2}')%{u-}"
