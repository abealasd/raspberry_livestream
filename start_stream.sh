#! /bin/bash

# Run avconv to stream the webcam's video to the RTMP server.

avconv  -f video4linux2 -s 320x176 -r "10" -i /dev/video0 -vcodec libx264 -preset ultrafast -f flv -an 'rtmp://<RASPBERRY_IP>/live/<STREAM_NAME>'
