#!/bin/bash

if pgrep hypridle >/dev/null; then
    pkill hypridle
else
    hypridle &
fi
