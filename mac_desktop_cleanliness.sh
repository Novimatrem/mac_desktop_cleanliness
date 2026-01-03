#!/bin/bash

while true
do

cd /Users/$(whoami)
mkdir /Users/$(whoami)/Desktop2
rsync -av Desktop/ Desktop2 --remove-source-files

sleep 1s # prevent lag by doing this too often

done
