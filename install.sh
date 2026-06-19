#!/bin/bash

REPO_DIR=$(dirname $(readlink -f "$0"))
VIDEO_PATH="$REPO_DIR/intro.mp4"

if [ ! -f "$VIDEO_PATH" ]; then
    echo "intro.mp4 not found, put it in the repo folder and try again"
    exit 1
fi

sed -i "s|VIDEO_PATH=.*|VIDEO_PATH=\"$VIDEO_PATH\"|g" boot-intro.sh

cp boot-intro.sh /usr/local/bin/boot-intro.sh
chmod +x /usr/local/bin/boot-intro.sh
cp boot-intro.service /etc/systemd/system/boot-intro.service

systemctl daemon-reload
systemctl enable boot-intro.service

