#!/bin/bash

mkdir -p build

node makelayers.js source.zip overrides extras build LiveG\ Emoji
npm run grunt webfont

rm "build/LiveG Emoji.ttf"

ttx -t name -o "build/raw-font/LiveG Emoji.ttf.names" "build/raw-font/LiveG Emoji.ttf"

perl -i \
    -e "my \$postscript = 0;" \
    -e "while(<>) {" \
    -e "    \$postscript = 1 if m/nameID='6'/;" \
    -e "    \$postscript = 0 if m|</namerecord>|;" \
    -e "    s/LiveG Emoji/LiveGEmoji/ if \$postscript;" \
    -e "    print;" \
    -e "}" \
    "build/raw-font/LiveG Emoji.ttf.names"

ttx -m "build/raw-font/LiveG Emoji.ttf" -o "build/raw-font/LiveG Emoji.temp.ttf" "build/raw-font/LiveG Emoji.ttf.names"

python3 fixdir.py "build/raw-font/LiveG Emoji.temp.ttf"

ttx -m "build/raw-font/LiveG Emoji.temp.ttf" -o "build/LiveG Emoji.ttf" "build/LiveG Emoji.ttx"