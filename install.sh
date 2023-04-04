#!/bin/bash

cp "build/LiveG Emoji.ttf" ~/.fonts/truetype/LiveG\ Emoji.ttf
sudo cp 75-emoji.conf /etc/fonts/conf.d/75-emoji.conf

fc-cache -fv