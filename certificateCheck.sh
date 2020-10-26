#!/bin/sh

certificateLookup=$(security find-certificate -c Gallagher)

if [[ ! $certificateLookup ]]
then
    echo "<result>false</result>"
else
    echo "<result>true</result>"
fi