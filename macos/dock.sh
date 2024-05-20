#!/bin/sh

dockutil --no-restart --remove all

dockutil --no-restart --add ~/Pictures/Screenshots
dockutil --no-restart --add ~/Downloads
killall Dock

echo "Dock is set."
