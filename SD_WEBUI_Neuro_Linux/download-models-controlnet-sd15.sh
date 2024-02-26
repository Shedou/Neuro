#!/usr/bin/env bash
# Script version 1.0
# LICENSE for this script is at the end of this file
Path_To_Script="$( dirname "$(readlink -f "$0")")"
# Font styles
B=$(tput bold)
N=$(tput sgr0)

# Welcome message
echo "\
-=    Скрипт автоматической загрузки моделей из репозиториев    =-
-=                Набор \"${B}ControlNet Models SD1.5${N}\"               =-
-=             ${B}Stable Diffusion WebUI Neuro Linux v2${N}            =-
-=           GitHub - https://github.com/Shedou/Neuro           =-
!ВНИМАНИЕ! Скрипт загружает файлы моделей из репозиториев в интернете!
Модели ControlNet (SD 1.5, для ручной загрузки):
 https://huggingface.co/lllyasviel/ControlNet-v1-1
Актуальность ссылок на репозитории: 2024-02-24

${B}В набор входят (.pth / .yaml):${N}
 control_v11e_sd15_ip2p, control_v11e_sd15_shuffle, control_v11f1e_sd15_tile
 control_v11f1p_sd15_depth, control_v11p_sd15_canny, control_v11p_sd15_inpaint
 control_v11p_sd15_lineart, control_v11p_sd15_mlsd, control_v11p_sd15_normalbae
 control_v11p_sd15_openpose, control_v11p_sd15_scribble, control_v11p_sd15_seg
 control_v11p_sd15_softedge, control_v11p_sd15s2_lineart_anime
${B}Общий размер загрузки*: Примерно 18.8 GiB${N}
* - Может быть иным, если в репозиториях будут изменения
    или файлы были загружены ранее.
"

# Arguments and Vars
arg1="$1"
ErrorFiles=""
Confirm=""

# Settings
ModelsDir="$Path_To_Script/webui170/models/ControlNet"

# function
function _download_file {
	local Folder="$1"; local Link="$2"; local confirm_retry="default"; local error_flag=false
	local FileNameWithoutPath="$(basename "$Link")"
	if [ ! -f "$Folder/$FileNameWithoutPath" ]; then
		if wget -T 15 -c -P "$Folder/temp" "$Link"; then echo "Good."; mv "$Folder/temp/$FileNameWithoutPath" "$Folder"; rm -rf "$Folder/temp"; error_flag=false
		else error_flag=true
			while [ "$confirm_retry" == "default" ] || [ "$confirm_retry" == "y" ]; do
				echo -e "Error?\nTry to continue downloading the file? (\"y\" to contine)"; read confirm_retry;
				if [ "$confirm_retry" == "y" ]; then
					if wget -T 15 -c -P "$Folder/temp" "$Link"; then
						echo "Good..."; mv "$Folder/temp/$FileNameWithoutPath" "$Folder"; rm -rf "$Folder/temp"; error_flag=false; confirm_retry="0"
					fi
				fi
			done
			confirm_retry="default"
		fi
		# If error...
		if [ $error_flag == true ]; then ErrorFiles="${ErrorFiles}\nLink: $Link\nDestination Folder: $Folder\n"; fi
	fi
}


# Display info and wait for confirmation
echo -e "${B}Каталог для загрузки моделей${N}:\n $ModelsDir"
echo -e "\nВведите \"${B}y${N}\" или \"${B}yes${N}\" для начала загрузки."
if [ "$arg1" != "--silent" ]; then read Confirm; fi

# Run if confirm or "--silent"
if [ "$Confirm" == "y" ] || [ "$Confirm" == "yes" ] || [ "$arg1" == "--silent" ]; then
	Continue=false
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_ip2p.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_shuffle.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_lineart.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_mlsd.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_normalbae.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_scribble.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_seg.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_softedge.yaml"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15s2_lineart_anime.yaml"
	
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_ip2p.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_shuffle.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_lineart.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_mlsd.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_normalbae.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_scribble.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_seg.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_softedge.pth"
	_download_file "$ModelsDir" "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15s2_lineart_anime.pth"
else
	echo "Отмена."
fi

# Pause...
if [ "$arg1" != "--silent" ]; then
	if [ "$ErrorFiles" != "" ]; then echo -e "Файлы не загружены из-за ошибок скачивания/доступа: $ErrorFiles"; fi
	echo "Если какие-либо файлы не были загружены ввиду каких-либо ошибок, перезапустите данный скрипт, чтобы продолжить загрузку."
	echo "Нажмите Enter или закройте данное окно для выхода."
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
