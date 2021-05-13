#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Build Flagship
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon flagship.png
# @raycast.currentDirectoryPath ~/dev/ios
# @raycast.packageName Flagship
# @raycast.argument1 { "type": "text", "placeholder": "//Apps/Flagship" }

input=${1}
export DEVELOPER_DIR=$(xcode-select -p)

# if [[ $input =~ "f" ]]; then
# 	input="//Apps/Flagship"
# elif [[ $input =~ "r" ]]; then
# 	input="//Apps/Registry"
# fi

tools/bazelisk build --config=xcode_debug --noshow_progress -- $input