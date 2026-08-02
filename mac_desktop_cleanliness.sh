#!/bin/bash

osascript -e 'display notification "Running..." with title "mac_desktop_cleanliness.sh"'

defaults write com.apple.finder CreateDesktop false

sleep 1s

killall Finder

sleep 1s

while true
do

cd /Users/zoeyglobe
mkdir /Users/zoeyglobe/Desktop2
rsync -av Desktop/ Desktop2 --remove-source-files
defaults write com.apple.finder CreateDesktop false
sleep 1s # prevent lag by doing this too often

# debug test
#osascript -e 'display notification "it is still alive" with title "mac_desktop_cleanliness.sh"'

done

