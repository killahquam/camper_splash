#!/bin/bash

doneFile="/Users/Shared/.CasperSplashDone"

echo "Creating done file"
touch "$doneFile"

echo "Logging user out to force FileVault Encryption"

# For some reason this 👇 line doesn't work when launched from CasperSplash
# so using AppleScript instead
# sudo kill -9 `pgrep loginwindow`

osascript -e 'tell application "System Events" to keystroke "q" using {command down, option down, shift down}'