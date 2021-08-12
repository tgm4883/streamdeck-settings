#!/bin/bash

statsfile='/home/thomas/Streaming/DBD/death-stats.txt'

if test -f $statsfile; then
    deaths=$(cat $statsfile)
else
    deaths=0
fi

if [[ $1 = "p" ]]
then
  newdeaths=$(expr $deaths + 1)
else
  newdeaths=$(expr $deaths - 1)
fi

echo $newdeaths > $statsfile