#!/usr/bin/env bash

# just for making sure we have sudo access from the start
sudo echo

declare -a arr=(
    "Error-Systray16x16@2x"
    "Presence-NoActivity-Systray16x16@2x"
    "Presence-Activity-Systray16x16@2x"
)

for icon in "${arr[@]}"; do
    echo "Resetting $icon"
    sudo cp $HOME/.themes/custom-icons/teams/old/$icon.png /usr/share/teams/resources/assets/$icon.png
done
