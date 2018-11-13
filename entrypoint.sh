#!/bin/bash

/opt/bin/entry_point.sh &

sleep 10

ps -defa

ffmpeg -f x11grab -video_size 1360x1020 \
 -i :99 \
 -framerate 30 -vcodec libx264 -preset ultrafast -qp 0 -pix_fmt yuv444p \
 -vf "drawtext=fontfile=/usr/share/fonts/dejavu/DejaVuSans-Bold.ttf: text='%{localtime\:%m/%d/%Y %I.%M.%S %p}': fontcolor=white@0.8: x=10: y=900" \
 -tune zerolatency -b 900k -f flv $STREAM_URL

# rtmp://192.168.1.66:1935/live/abc


