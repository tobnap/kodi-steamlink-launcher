#!/bin/bash

DIRNAME=$( dirname "${BASH_SOURCE[0]}" )

bash ${DIRNAME}/heartbeat.sh & /usr/bin/steamlink & sudo systemctl stop kodi

exit
