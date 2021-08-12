#!/bin/bash

statsfile='/home/thomas/Streaming/DBD/escape-stats.txt'

if test -f $statsfile; then
    escapes=$(cat $statsfile)
else
    escapes=0
fi

if [[ $1 = "p" ]]
then
  newescapes=$(expr $escapes + 1)
else
  newescapes=$(expr $escapes - 1)
fi

echo $newescapes > $statsfile