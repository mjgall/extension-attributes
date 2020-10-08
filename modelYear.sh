#!/bin/bash

marketingName=$(/usr/libexec/PlistBuddy -c "print :'CPU Names':$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}' | cut -c 9-)-en-US_US" \
~/Library/Preferences/com.apple.SystemProfiler.plist)
modelYear=$(echo $marketingName | grep -o "20[0-9][0-9]" )

if [ $? -eq 0 ]; then
    echo "<result>$modelYear</result>"
else
    exit 1
fi
