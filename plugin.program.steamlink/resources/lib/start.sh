#!/bin/bash

DIRNAME=$( dirname "${BASH_SOURCE[0]}" )

sudo openvt -c 7 -s -f -- su pi -c "bash ${DIRNAME}/heartbeat.sh & /usr/bin/steamlink &"
sudo systemctl stop kodi

exit
