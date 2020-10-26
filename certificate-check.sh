#!/bin/sh

certificateLookup=$(security find-certificate -a Gallagher)

if [[ ! $certificateLookup ]]
then
    echo "<result>false</result>"
else
    echo "<result>true</result>"
fi