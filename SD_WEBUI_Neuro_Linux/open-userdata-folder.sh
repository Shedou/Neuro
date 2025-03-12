#!/usr/bin/env bash
# Script version 1.0
# This can help avoid application version conflicts, but requires special preparation.
# WARNING! This is not intended for applications that are installed in system mode.
# WARNING! This is an experimental feature.
#

Path_To_Script="$( dirname "$(readlink -f "$0")")"
Path_To_UserData="$Path_To_Script/userdata"

if type thunar &> /dev/null;       then thunar "$Path_To_UserData"
elif type dolphin &> /dev/null;    then dolphin "$Path_To_UserData"
elif type nautilus &> /dev/null;   then nautilus "$Path_To_UserData"
elif type pcmanfm &> /dev/null;    then pcmanfm "$Path_To_UserData"
elif type pcmanfm-qt &> /dev/null; then pcmanfm-qt "$Path_To_UserData"
elif type nemo &> /dev/null;       then nemo "$Path_To_UserData"
elif type caja &> /dev/null;       then caja "$Path_To_UserData"
else
	echo "No file managers found."
	echo "Installer-SH - https://github.com/Shedou/Chimbalix-Software-Catalog"
	read pause
fi
