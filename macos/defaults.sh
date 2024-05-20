#!/usr/bin/env bash
#============================================================================
# Title: macos
# Usage: sh macos.sh
#
# Description:
# Sets macos preferences. Mostly taken from Mostly taken from
# https://mths.be/macos
#============================================================================

# Disable natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Set default screenshot folder
defaults write com.apple.screencapture location /Users/alexswanson/Pictures/Screenshots

# Set autohide for Dock
defaults write com.apple.dock autohide -bool true

# Set default browser
# Set default darkmode
###############################################################################
# Configure Trackpad and Mouse Settings
###############################################################################
# Secondary Click
defaults write com.apple.AppleMultitouchMouse.plist MouseButtonMode TwoButton

# Trackpad Tap to Click
defaults write com.apple.AppleMultitouchTrackpad.plist Clicking 1
###############################################################################
# Disable annoying 'features'
###############################################################################
# Disable 'Are you sure you want to open this application?' dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable iTunes from responding to the keyboard media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null
