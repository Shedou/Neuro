#!/usr/bin/env bash
# Script version 1.0
# LICENSE for this script is at the end of this file
Path_To_Script="$( dirname "$(readlink -f "$0")")"
# Font styles
B=$(tput bold)
N=$(tput sgr0)

# Arguments
arg1="$1"

# Welcome message
echo "-= Uninstaller v1.0 for Chimbalix 23.1 / 24.1 Alphachi =-"
echo "-=        ${B}Stable Diffusion WebUI Neuro Linux v2.${N}       =-"
echo "-=       GitHub - https://github.com/Shedou/Neuro      =-"

# Check "root"
if [ "$EUID" -ne 0 ]; then echo "Please run as ${B}root${N}"; read pause; exit 1; fi

function _remove_file { local file="$1"; if [ -f "$file" ]; then echo -e "Removing:\n $file"; rm -f "$file"; else echo -e "File not found, skip:\n $file"; fi }
function _remove_dir { local dir="$1"; if [ -d "$dir" ]; then echo -e "Removing:\n $dir"; rm -rf "$dir"; else echo -e "Directory not found, skip:\n $dir"; fi }

AppDirFiles=(
"sd_webui_neuro_linux_v2_cpu.desktop"
"sd_webui_neuro_linux_v2.desktop"
"sd_webui_neuro_linux_v2_folder.desktop"
"sd_webui_neuro_linux_v2_xformers.desktop"
)

BinDirFiles=(
"sdwebui-neuro-v2"
"sdwebui-neuro-v2-cpu"
"sdwebui-neuro-v2-xformers"
)

Out_InstallDir="INSTALL_DIR_TO_BE_REPLACED"
Out_BinDir="BIN_DIR_TO_BE_REPLACED"
Out_Menu_AppsDir="APPS_DIR_TO_BE_REPLACED"

echo -e "\n${B}Files to be deleted:${N}\n"
for i in "${!AppDirFiles[@]}"; do
	echo " $Out_Menu_AppsDir/${AppDirFiles[$i]}"
done

for i in "${!BinDirFiles[@]}"; do
	echo " $Out_BinDir/${BinDirFiles[$i]}"
done

echo -e "\n${B}Folders to be deleted:${N}\n"
echo " $Out_InstallDir"

# Display info and wait confirmation
echo "\

${B}Attention!${N} Make sure that you do not have any important data in the program directory!
${B}The listed files and directories will be deleted if they are present in the system!${N}
"

echo -e "\nEnter \"${B}y${N}\" or \"${B}yes${N}\" to begin uninstallation."
Confirm=""
if [ "$arg1" != "--silent" ]; then read Confirm; fi

# Run installation if confirm or "--silent"
if [ "$Confirm" == "y" ] || [ "$Confirm" == "yes" ] || [ "$arg1" == "--silent" ]; then
	Continue=false
	for i in "${!AppDirFiles[@]}"; do _remove_file "$Out_Menu_AppsDir/${AppDirFiles[$i]}"; done
	for i in "${!BinDirFiles[@]}"; do _remove_file "$Out_BinDir/${BinDirFiles[$i]}"; done
	_remove_dir "$Out_InstallDir"
	
	echo -e "\n- Updating the \"Start\" menu without rebooting (touch /etc/xdg/menus/*.menu)"
	echo -e "If the old shortcuts do not disappear from the menu themselves, restart the Xfce panel with the command \"xfce4-panel -r\", or reboot the system.\n"
	touch /etc/xdg/menus/*.menu
fi

if [ "$arg1" != "--silent" ]; then
	echo "Press Enter to exit or close this window."
	read pause
fi

# MIT License
#
# Copyright (c) 2024 Chimbal
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
