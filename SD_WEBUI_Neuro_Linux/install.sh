#!/usr/bin/env bash
# Script version 1.1
# LICENSE for this script is at the end of this file
Path_To_Script="$( dirname "$(readlink -f "$0")")"
# Font styles
B=$(tput bold)
N=$(tput sgr0)

# Arguments
arg1="$1"

# Welcome message
echo "-= Installer v1.0 for Chimbalix 23.1 / 24.1 Alphachi =-"
echo "-=       ${B}Stable Diffusion WebUI Neuro Linux v2.${N}      =-"
echo "-=      GitHub - https://github.com/Shedou/Neuro     =-"

# Check "root"
if [ "$EUID" -ne 0 ]; then echo "Please run as ${B}root${N}"; read pause; exit 1; fi

# Check Distro version and installed Service Packs
DistroVersion="Unknown"
SpInstalled=0
if [ -f /etc/lsb-release ]; then . /etc/lsb-release; DistroVersion=$PRETTY_NAME
	if [ -f "/etc/chimbalix/sp"*"-installed" ]; then
		for SpVer in "/etc/chimbalix/sp"*"-installed"; do SpInstalled=$(($SpInstalled+1)); done
	fi
else
	if uname &>/dev/null; then DistroVersion="$(uname -sr)"; fi
fi

# Settings
InfoReqFreeDiskSpace=24000 # in MiB
TempDir="/tmp/SD_WEBUI_INSTALLER_TEMP_DIR"

In_InstallDir="$Path_To_Script"
In_BinDir="$Path_To_Script/installer-data/files/bin"
In_Menu_AppsDir="$Path_To_Script/installer-data/files/applications/chi-ai"

Out_InstallDir="/portsoft/x86_64/SD-WEBUI-Neuro-Linux-v2"
Out_BinDir="/usr/bin"
Out_Menu_AppsDir="/usr/share/applications/chi-ai"

# Display info and wait confirmation
echo "\

Temp Directory: $TempDir
Install Directory: $Out_InstallDir
Install Menu shortcuts to: $Out_Menu_AppsDir
$(for file in "$In_Menu_AppsDir"/*; do echo " $(basename $file)"; done)
Install Bin shortcuts to: $Out_BinDir
$(for file in "$In_BinDir"/*; do echo " $(basename $file)"; done)

Recommended free space on Disk: $InfoReqFreeDiskSpace MiB
Detected OS Version: $DistroVersion
Service pack installed: $SpInstalled

Please close all important applications before installation.
"

if [[ $SpInstalled < 1 ]] && [ "$DistroVersion" == "Chimbalix 23.1 Alphachi" ]; then
	echo -e "\nWarning! ${B}Service Pack 1 for Chimbalix 23.1 Alphachi${N} must be installed."; fi
if [ "$DistroVersion" != "Chimbalix 23.1 Alphachi" ] && [ "$DistroVersion" != "Chimbalix 24.1 Alphachi" ]; then
	echo -e "\nWARNING! DO NOT INSTALL THE APPLICATION ON OTHER LINUX DISTRIBUTIONS!\n THIS MAY CAUSE ERRORS OR HARM TO THE SYSTEM!"; fi

echo -e "\nEnter \"${B}y${N}\" or \"${B}yes${N}\" to begin installation."
Confirm=""
if [ "$arg1" != "--silent" ]; then read Confirm; fi

# Run installation if confirm or "--silent"
if [ "$Confirm" == "y" ] || [ "$Confirm" == "yes" ] || [ "$arg1" == "--silent" ]; then
	Continue=false
	# Install Service Pack 1 if "Chimbalix 23.1 Alphachi"
	if [[ $SpInstalled < 1 ]] && [ "$DistroVersion" == "Chimbalix 23.1 Alphachi" ]; then
		echo "Installing Service Pack 1 for Chimbalix 23.1 Alphachi"
		bash "$Path_To_Script/installer-data/sp1/chimbalix-sp1-install.sh" --silent >/dev/null
		echo "Continue software installation."
	fi
	
	# Remove Temporary Directory if exist
	if [ -d "$TempDir" ]; then rm -r "$TempDir"; fi
	
	# Check Output Dir
	if [ ! -d "$Out_InstallDir" ]; then
		mkdir "$Out_InstallDir"
		chmod 777 "$Out_InstallDir"
		FreeSpace=$(df -m "$Out_InstallDir" | grep "/" | awk '{print $4}')
		rm -r "$Out_InstallDir"
		# Check free space on Disk
		if (( FreeSpace < InfoReqFreeDiskSpace )); then
			echo -e "\n${B}Warning! Free space on drive: $FreeSpace MiB!${N}"
			echo -e "${B}Recommended free space: $InfoReqFreeDiskSpace MiB!${N}"
			
			echo -e "\nDo you want to continue? (enter \"y\" or \"yes\" to confirm)"
			
			if [ "$arg1" != "--silent" ]; then read Confirm1; fi
			if [ "$Confirm1" == "y" ] || [ "$Confirm1" == "yes" ] || [ "$arg1" == "--silent" ]; then Continue=true
			else
				echo "Abort installation!"
			fi	
		else
			Continue=true
		fi
	else
		echo -e "\nInstallation directory is present:\n $Out_InstallDir"
		echo -e "\nDo you want to rewrite files? (enter \"y\" or \"yes\" to confirm)"
		
		if [ "$arg1" != "--silent" ]; then read Confirm2; fi
		if [ "$Confirm2" == "y" ] || [ "$Confirm2" == "yes" ] || [ "$arg1" == "--silent" ]; then Continue=true
		else echo "Abort installation!"; fi	
	fi
	
	if [ "$Continue" == true ]; then
		# Copy program files
		echo "Copying files to: $Out_InstallDir"
		echo "Please wait..."
		cp -r "$In_InstallDir/." "$Out_InstallDir"
		echo "Set rights: $Out_InstallDir"
		chmod -R 777 "$Out_InstallDir"
		
		# Prepare and copy Bin shortcuts
		mkdir "$TempDir"
		cp -rf "$In_BinDir/." "$TempDir"
		for file in "$TempDir"/*; do sed -i -e "s~PATH_TO_FOLDER~$Out_InstallDir~g" "$file"; done
		cp -rf "$TempDir/." "$Out_BinDir"
		rm -r "$TempDir"
		
		# Prepare and copy App shortcuts
		mkdir "$TempDir"
		cp -rf "$In_Menu_AppsDir/." "$TempDir"
		for file in "$TempDir"/*; do sed -i -e "s~PATH_TO_FOLDER~$Out_InstallDir~g" "$file"; done
		cp -rf "$TempDir/." "$Out_Menu_AppsDir"
		rm -r "$TempDir"
		
		# Prepare uninstaller
		echo "Prepare uninstaller: $Out_InstallDir/uninstall.sh"
		cp "$Path_To_Script/installer-data/uninstall.sh" "$Out_InstallDir"
		sed -i -e "s~INSTALL_DIR_TO_BE_REPLACED~$Out_InstallDir~g" "$Out_InstallDir/uninstall.sh"
		sed -i -e "s~BIN_DIR_TO_BE_REPLACED~$Out_BinDir~g" "$Out_InstallDir/uninstall.sh"
		sed -i -e "s~APPS_DIR_TO_BE_REPLACED~$Out_Menu_AppsDir~g" "$Out_InstallDir/uninstall.sh"
		chmod 777 "$Out_InstallDir/uninstall.sh"
		
		echo "Updating the \"Start\" menu without rebooting (touch /etc/xdg/menus/*.menu)"
		echo "If new items do not appear in the menu, restart the Xfce panel with the command \"xfce4-panel -r\", or reboot the system."
		touch /etc/xdg/menus/*.menu
		
		echo -e "\nThe installation process has ended!\n"
	fi
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
