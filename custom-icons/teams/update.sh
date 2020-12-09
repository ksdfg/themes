#!/usr/bin/env bash

# just for making sure we have sudo access from the start
sudo echo

declare -a arr=(
    "Error-Systray16x16@2x"
    "Presence-NoActivity-Systray16x16@2x"
)

for icon in "${arr[@]}"; do
    echo "Backing up existing $icon"
    sudo cp /usr/share/teams/resources/assets/$icon.png $HOME/.themes/custom-icons/teams/old/$icon.png

    echo "Creating new $icon"
    sudo cp $HOME/.themes/custom-icons/teams/new/$icon.png /usr/share/teams/resources/assets/$icon.png
done
