#!/bin/sh

# From: https://www.jamf.com/jamf-nation/discussions/9623/create-an-extension-attribute-that-reports-last-reboot-for-a-mac

lastboot=`last reboot | tail -3 | head -1 | awk '{ print $6 " " $3 ", " $4 " " $5 }'`

echo "<result>$lastboot</result>"
