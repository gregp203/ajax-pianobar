#!/bin/bash
while read L; do
        k="`echo "$L" | cut -d '=' -f 1`"
        v="`echo "$L" | cut -d '=' -f 2`"
        export "$k=$v"
done < <(grep -e '^\(title\|artist\|album\|stationName\|songStationName\|pRet\|pRetStr\|wRet\|wRetStr\|songDuration\|songPlayed\|rating\|coverArt\|stationCount\|station[0-9]*\)=' /dev/std
in) # don't overwrite $1...

case "$1" in 
        songstart)

        echo -e "$title\n$artist\n"on "$album" > /var/www/songinfo
esac   
