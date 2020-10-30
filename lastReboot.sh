#!/bin/bash

# https://gist.github.com/talkingmoose/f89b71bc85537fef8882038c8714b160

# get last reboot date and time
lastReboot=$( who -b )

# extract month, day and time
month=$( /usr/bin/awk '{ print $3 }' <<< "$lastReboot" )
day=$( /usr/bin/awk '{ print $4 }' <<< "$lastReboot" )
time=$( /usr/bin/awk '{ print $5 }' <<< "$lastReboot" )

# convert date and time to ISO date format
lastRebootISO=$( /bin/date -j -f "%b %e %l:%M" "$month $day $time" '+%Y-%m-%d %I:%M:00' )

echo "<result>$lastRebootISO</result>"

exit 0