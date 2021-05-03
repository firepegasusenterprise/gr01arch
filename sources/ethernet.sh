#!/bin/bash

echo -e "%{F#000000} %{F#e2ee6a}$(/usr/sbin/ifconfig enp2s0 2>/dev/null| grep "inet " | awk '{print $2}')%{u-}"
