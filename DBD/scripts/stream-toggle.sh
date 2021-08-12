#!/bin/bash

. ~/creds

if test -f "/home/thomas/Streaming/DBD/gamestate.txt"; then
    source /home/thomas/Streaming/DBD/gamestate.txt
else
    GAMESTATE='Start'
fi

if [[ $GAMESTATE == 'BETWEEN' ]]
then
  /usr/bin/obs-cli scene switch "Game" --password $obs_pass
  echo "GAMESTATE='INGAME'" > /home/thomas/Streaming/DBD/gamestate.txt
else
  /home/thomas/Streaming/Twitch/twitch-stats.sh
  /usr/bin/obs-cli scene switch "Between Games" --password $obs_pass
  echo "GAMESTATE='BETWEEN'" > /home/thomas/Streaming/DBD/gamestate.txt
fi
