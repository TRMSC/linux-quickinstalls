#!/bin/bash

REPLY=""
read -p "Type anything and press enter to skip RPiPlay (5sec)..." -t 5

if [ -z $REPLY ]
then
   echo "Start RPiPlay..."
   /usr/local/bin/rpiplay
else
   echo "Skip RPiPlay..."
fi
