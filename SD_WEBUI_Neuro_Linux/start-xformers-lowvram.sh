#!/usr/bin/env bash
# Script version 1.0
# This can help avoid application version conflicts, but requires special preparation.
# WARNING! This is not intended for applications that are installed in system mode.
# WARNING! This is an experimental feature.
#

Path_To_Script="$( dirname "$(readlink -f "$0")")"

#export PWD="$Path_To_Script/program"
export PATH="$PATH:$Path_To_Script/program"

export HOME="$Path_To_Script/userdata"

export XDG_DATA_HOME="$Path_To_Script/userdata/.local/share"
export XDG_STATE_HOME="$Path_To_Script/userdata/.local/state"
export XDG_CONFIG_HOME="$Path_To_Script/userdata/.config"
export XDG_CACHE_HOME="$Path_To_Script/userdata/.cache"

"$Path_To_Script/program/start-xformers-lowvram.sh" "$@"
