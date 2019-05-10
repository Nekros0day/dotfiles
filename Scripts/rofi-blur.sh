#!/bin/sh
 
TMP=`mktemp -u`
 
ffmpeg \
-video_size 2560x1440 \
-f x11grab -i $DISPLAY \
-vf avgblur=5:15:5 \
-vframes 1 \
-f image2pipe -vcodec png \
-preset ultrafast \
$TMP > /dev/null
 
feh -F $TMP &
PID=$!
 
sleep .1
rofi -show run -bw 0 -bc "#212121" -bg "#212121" -fg "#FFFFF" -hlbg "#212121" -hlfg "#6C6C6C" -font "Futura LT Book Display 18"
 
kill $PID

    rm $TMP
