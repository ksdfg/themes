#!/usr/bin/env bash

# A script to update Discord's tray icon using the Papirus icon theme.
# Copyright (C) 2018 Julien Machiels
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# from https://github.com/MrTimscampi/scripts/blob/master/update-discord-tray

set -e

declare -a arr=(
    "tray"
    "tray-connected"
    "tray-deafened"
    "tray-muted"
    "tray-speaking"
    "tray-unread"
)

echo "Extracting core.asar..."
cd $HOME/.config/discord/0.*/modules/discord_desktop_core
cp core.asar /tmp/core.asar
asar e /tmp/core.asar /tmp/core

# Process the icons
for icon in "${arr[@]}"; do
    echo "Resetting $icon..."
    cp $HOME/.themes/custom-icons/discord/old/$icon.png /tmp/core/app/images/systemtray/linux/$icon.png
done

echo "Repacking core.asar..."
asar p /tmp/core /tmp/core.asar

echo "Updating discord_desktop_core.zip..."
cp /tmp/core.asar core.asar

echo "Cleaning up..."
rm -rf /tmp/core.asar
rm -rfd /tmp/core/

cd - > /dev/null
