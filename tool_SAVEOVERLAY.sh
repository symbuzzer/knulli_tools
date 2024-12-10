#!/bin/bash

version="1.0.1"

script_dir="$(dirname "$(realpath "$0")")"
tool_dir="$script_dir/knulli_tools"

mkdir -p "$tool_dir"

curl -L https://raw.githubusercontent.com/symbuzzer/knulli_tools/refs/heads/main/tool_SAVEOVERLAY.sh -o "$script_dir/tool_SAVEOVERLAY.sh"
curl -L https://raw.githubusercontent.com/symbuzzer/knulli_tools/refs/heads/main/pythonscripts/saveoverlay.pygame -o "$tool_dir/saveoverlay.pygame"

#if [ ! -f "$tool_dir/tool_SAVEOVERLAY.pygame" ]; then
#    curl -L https://raw.githubusercontent.com/symbuzzer/knulli_tools/refs/heads/main/pythonscripts/saveoverlay.pygame -o "$tool_dir/saveoverlay.pygame"
#fi

if command -v python3 &>/dev/null; then
    python3 "$tool_dir/saveoverlay.pygame"
elif command -v python &>/dev/null; then
    python "$tool_dir/saveoverlay.pygame"
else
    exit 1
fi
