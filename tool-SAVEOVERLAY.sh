#!/bin/bash

version="1.0.0"

script_dir="$(dirname "$(realpath "$0")")"
tool_dir="$script_dir/knulli-tools"

mkdir -p "$tool_dir"

curl -L https://raw.githubusercontent.com/symbuzzer/knullitools/refs/heads/main/tool-SAVEOVERLAY.sh -o "$script_dir/tool-SAVEOVERLAY.sh"

if [ ! -f "$tool_dir/tool-SAVEOVERLAY.pygame" ]; then
    curl -L https://raw.githubusercontent.com/symbuzzer/etk_tool/refs/heads/main/knulli-tools/tool-SAVEOVERLAY.pygame -o "$tool_dir/tool-SAVEOVERLAY.pygame"
fi

if command -v python3 &>/dev/null; then
    python3 "$tool-SAVEOVERLAY.pygame"
elif command -v python &>/dev/null; then
    python "$tool-SAVEOVERLAY.pygame"
else
    exit 1
fi
