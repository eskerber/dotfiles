#!/bin/bash

# Raycast Script Command Template
#
# Duplicate this file and remove ".template." from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Build Registry
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🎯
# @raycast.currentDirectoryPath ~/dev/ios
# @raycast.packageName Flagship

cd ~/dev/ios;export DEVELOPER_DIR="/Applications/Xcode-12.1.app/Contents/Developer"; 
tools/bazelisk build --config=xcode_debug  -- //Apps/Registry