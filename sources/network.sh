#!/bin/bash

echo -e "%{F#000000} %{F#e2ee6a}$(curl -s ifconfig.me 2>/dev/null)%{u-}"
