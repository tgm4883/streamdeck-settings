#!/bin/bash

. ~/creds

## Total followers
FOLLOWERS=$(twitch api get users follows -q to_id=$TWITCH_ID)

## Total Followers
echo $FOLLOWERS | jq '.data | length' > /home/thomas/Streaming/Twitch/total-followers.txt

## Latest Followers
echo $FOLLOWERS | jq '.data[0].from_name' | sed 's/"//g' > /home/thomas/Streaming/Twitch/latest-followers.txt
echo $FOLLOWERS | jq '.data[1].from_name' | sed 's/"//g' >> /home/thomas/Streaming/Twitch/latest-followers.txt
echo $FOLLOWERS | jq '.data[2].from_name' | sed 's/"//g' >> /home/thomas/Streaming/Twitch/latest-followers.txt


