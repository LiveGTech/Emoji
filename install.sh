#!/bin/bash

# LiveG Emoji
# 
# Copyright (C) LiveG. All Rights Reserved.
# 
# https://liveg.tech
# Licensed by the LiveG Open-Source Licence, which can be found at LICENCE.md.

cp "build/LiveG Emoji.ttf" ~/.fonts/truetype/LiveG\ Emoji.ttf
sudo cp 75-emoji.conf /etc/fonts/conf.d/75-emoji.conf

fc-cache -fv