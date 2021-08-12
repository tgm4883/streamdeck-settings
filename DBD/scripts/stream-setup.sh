#!/bin/bash

. ~/creds

/usr/bin/obs-cli scene switch "Pre-stream" --password $obs_pass
echo 'Starting' > /home/thomas/Streaming/DBD/gamestate.txt
echo '0' > /home/thomas/Streaming/DBD/death-stats.txt
echo '0' > /home/thomas/Streaming/DBD/escape-stats.txt
sleep 30
/usr/bin/obs-cli stream start --password $obs_pass