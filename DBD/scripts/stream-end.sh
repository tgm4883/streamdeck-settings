#!/bin/bash

. ~/creds

/usr/bin/obs-cli scene switch "Post-stream" --password $obs_pass
rm /home/thomas/Streaming/DBD/gamestate.txt
sleep 30
/usr/bin/obs-cli stream stop --password $obs_pass
# rm /home/thomas/Streaming/DBD/death-stats.txt
# rm /home/thomas/Streaming/DBD/escape-stats.txt
