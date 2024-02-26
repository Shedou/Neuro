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
-=                       Набор \"${B}Основной${N}\"                       =-
-=             ${B}Stable Diffusion WebUI Neuro Linux v2${N}            =-
-=           GitHub - https://github.com/Shedou/Neuro           =-
!ВНИМАНИЕ! Скрипт загружает файлы моделей из репозиториев в интернете!
Актуальность ссылок на репозитории: 2024-02-24

${B}В набор входят:${N}
 ViT-L-14_stats.th - RealESRGAN_x4plus_anime_6B.pth - ESRGAN_4x.pth
 RealESRGAN_x4plus.pth - RealESRGAN_x2plus.pth - parsing_parsenet.pth
 detection_Resnet50_Final.pth - SwinIR_4x.pth - ScuNET.pth
 GFPGANv1.4.pth - codeformer-v0.1.0.pth - model-resnet_custom_v3.pt
 model_base_caption_capfilt_large.pth - model.ckpt (LDSR)
 
${B}Общий размер загрузки*: Примерно 4.6 GiB${N}
* - Может быть иным, если в репозиториях будут изменения
    или файлы были загружены ранее.
"

# Arguments and Vars
arg1="$1"
ErrorFiles=""
Confirm=""

# Settings
ModelsDir="$Path_To_Script/webui170/models"

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
	_download_file "$ModelsDir/karlo" "https://huggingface.co/spitfire4794/Kandinsky_2.1/resolve/main/ViT-L-14_stats.th"
	_download_file "$ModelsDir/RealESRGAN" "https://huggingface.co/spaces/Marne/Real-ESRGAN/resolve/main/RealESRGAN_x4plus_anime_6B.pth"
	_download_file "$ModelsDir/ESRGAN" "https://huggingface.co/ffxvs/upscaler/resolve/main/ESRGAN_4x.pth"
	_download_file "$ModelsDir/RealESRGAN" "https://huggingface.co/nateraw/real-esrgan/resolve/main/RealESRGAN_x4plus.pth"
	_download_file "$ModelsDir/RealESRGAN" "https://huggingface.co/nateraw/real-esrgan/resolve/main/RealESRGAN_x2plus.pth"
	_download_file "$ModelsDir/GFPGAN" "https://huggingface.co/leonelhs/facexlib/resolve/main/parsing_parsenet.pth"
	_download_file "$ModelsDir/GFPGAN" "https://huggingface.co/tojhu/self/resolve/main/detection_Resnet50_Final.pth"
	_download_file "$ModelsDir/SwinIR" "https://huggingface.co/yongxin99/final-prune/resolve/main/SwinIR_4x.pth"
	_download_file "$ModelsDir/ScuNET" "https://huggingface.co/yongxin99/final-prune/resolve/main/ScuNET.pth"
	_download_file "$ModelsDir/GFPGAN" "https://huggingface.co/datasets/kkchi/123123/resolve/main/GFPGANv1.4.pth"
	_download_file "$ModelsDir/Codeformer" "https://huggingface.co/FMNing/codeformer-v0.1.0/resolve/main/codeformer-v0.1.0.pth"
	_download_file "$ModelsDir/torch_deepdanbooru" "https://huggingface.co/Renqf/model-resnet_custom_v3.pt/resolve/main/model-resnet_custom_v3.pt"
	_download_file "$ModelsDir/BLIP" "https://huggingface.co/sunnyweir/model_base_caption_capfilt_large.pth/resolve/main/model_base_caption_capfilt_large.pth"
	_download_file "$ModelsDir/LDSR" "https://huggingface.co/hollowstrawberry/upscalers-backup/resolve/main/LDSR/model.ckpt"
	
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
