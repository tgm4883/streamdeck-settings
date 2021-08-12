#!/bin/bash

. ~/creds

if [[ $1 == "STOP" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/stop-all/?auth_token=$AUTH
elif [[ $1 == "DUNGEON" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/43692/play/?auth_token=$AUTH
elif [[ $1 == "FORESTDAY" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/43693/play/?auth_token=$AUTH
elif [[ $1 == "FORESTNIGHT" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/43694/play/?auth_token=$AUTH
elif [[ $1 == "RAIN" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/16290/play/?auth_token=$AUTH
elif [[ $1 == "CAVE" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/47476/play/?auth_token=$AUTH
elif [[ $1 == "BATTLE" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/269100/play/?auth_token=$AUTH
elif [[ $1 == "WITCHWOOD" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/stop-all/?auth_token=$AUTH
  /usr/bin/curl https://syrinscape.com/online/frontend-api/elements/68868/play/?auth_token=$AUTH
elif [[ $1 == "SPOOKY" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/4189/play/?auth_token=$AUTH
elif [[ $1 == "CATAN" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/stop-all/?auth_token=$AUTH
  /usr/bin/curl https://syrinscape.com/online/frontend-api/elements/68870/play/?auth_token=$AUTH
elif [[ $1 == "MOODY" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/4186/play/?auth_token=$AUTH
elif [[ $1 == "TOWN" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/43697/play/?auth_token=$AUTH
elif [[ $1 == "FORT" ]]
then
  /usr/bin/curl https://syrinscape.com/online/frontend-api/moods/73031/play/?auth_token=$AUTH
fi
