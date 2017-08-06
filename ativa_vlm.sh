#!/bin/bash
#
# this scripts activates vlc-server in this server
#
RSTP_PORT=5554
cd /VIDEOS

# set weak password
# uses RTSP in port
vlc -vvv --color -I telnet --telnet-password 1 --telnet-host 0.0.0.0 --rtsp-port $RSTP_PORT &
sleep 1

# carrega automaticamente os videos relacionados em videos1.vlm
./load_videos.sh

# na estacao deve rodar agora
# rtsp://<IP address of this server>:5554/<alias of the video>
# e.g rtsp://10.0.0.1:5554/BBB_480
