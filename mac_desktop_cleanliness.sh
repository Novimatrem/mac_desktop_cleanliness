#!/bin/bash

defaults write com.apple.finder CreateDesktop false

sleep 1s

killall Finder

sleep 1s

while true
do

cd /Users/$(whoami)
mkdir /Users/$(whoami)/Desktop2
rsync -av Desktop/ Desktop2 --remove-source-files
defaults write com.apple.finder CreateDesktop false
sleep 1s # prevent lag by doing this too often

done
