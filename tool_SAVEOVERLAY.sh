#!/bin/bash

version="1.0.0"

script_dir="$(dirname "$(realpath "$0")")"
tool_dir="$script_dir/knulli_tools"

mkdir -p "$tool_dir"
chmod -R u+w "$tool_dir"

curl -L https://raw.githubusercontent.com/symbuzzer/knulli_tools/refs/heads/main/tool_SAVEOVERLAY.sh -o "$script_dir/tool_SAVEOVERLAY.sh"
curl -L https://raw.githubusercontent.com/symbuzzer/knulli_tools/refs/heads/main/pythonscripts/tool_SAVEOVERLAY.pygame -o "$tool_dir/tool_SAVEOVERLAY.pygame"

#if [ ! -f "$tool_dir/tool_SAVEOVERLAY.pygame" ]; then
#    curl -L https://raw.githubusercontent.com/symbuzzer/knulli_tools/refs/heads/main/pythonscripts/tool_SAVEOVERLAY.pygame -o "$tool_dir/tool_SAVEOVERLAY.pygame"
#fi

if command -v python3 &>/dev/null; then
    python3 "$tool_SAVEOVERLAY.pygame"
elif command -v python &>/dev/null; then
    python "$tool_SAVEOVERLAY.pygame"
else
    exit 1
fi
