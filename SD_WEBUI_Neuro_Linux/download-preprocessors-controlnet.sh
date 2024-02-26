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
-=                 Набор \"${B}ControlNet Annotators${N}\"                =-
-=             ${B}Stable Diffusion WebUI Neuro Linux v2${N}            =-
-=           GitHub - https://github.com/Shedou/Neuro           =-
!ВНИМАНИЕ! Скрипт загружает файлы моделей из репозиториев в интернете!
Актуальность ссылок на репозитории: 2024-02-24

${B}В набор входят ( форматы .pth / .onnx / .torchscript / .pt / .bin ):${N}
 7_model, table5_pidinet, mlsd_large_512_fp32, UNet, mobilenet_v2-b0353104, sk_model
 sk_model2, ControlNetHED, rtmpose-m_simcc-ap10k_pt-aic-coco_210e-256x256-7a041aa1_20230206
 dw-ll_ucoco_384, hand_pose_model, facenet, erika, ControlNetLama, upernet_global_small
 body_pose_model, yolox_l, netG, densepose_r50_fpn_dl, scannet, latest_net_G
 dpt_hybrid-midas-501f0c75, hrnetv2_w64_imagenet_pretrained, res101
 150_16_swin_l_oneformer_coco_100ep, 250_16_swin_l_oneformer_ade20k_160k
 graphormer_hand_state_dict, dinov2_vitl14_pretrain, depth_anything_vitl14, ZoeD_M12_N
${B}Общий размер загрузки*: Примерно 10.2 GiB${N}
* - Может быть иным, если в репозиториях будут изменения или файлы уже присутствуют.
"

# Arguments and Vars
arg1="$1"
ErrorFiles=""
Confirm=""

# Settings
ModelsTorchDir="$Path_To_Script/webui170/models/ControlNet-fking_torch_cache_dependencies/hub/checkpoints"
ModelsControlDir="$Path_To_Script/webui170/models/ControlNet-Annotator"

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
echo -e "${B}Каталоги для загрузки моделей${N}:\n $ModelsControlDir\n $ModelsTorchDir"
echo -e "\nВведите \"${B}y${N}\" или \"${B}yes${N}\" для начала загрузки."
if [ "$arg1" != "--silent" ]; then read Confirm; fi

# Run if confirm or "--silent"
if [ "$Confirm" == "y" ] || [ "$Confirm" == "yes" ] || [ "$arg1" == "--silent" ]; then
	Continue=false
	_download_file "$ModelsTorchDir" "https://dl.fbaipublicfiles.com/dinov2/dinov2_vitl14/dinov2_vitl14_pretrain.pth"
	_download_file "$ModelsTorchDir" "https://download.pytorch.org/models/mobilenet_v2-b0353104.pth"
	_download_file "$ModelsControlDir/TEED" "https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/Annotators/7_model.pth"
	_download_file "$ModelsControlDir/pidinet" "https://huggingface.co/lllyasviel/Annotators/resolve/main/table5_pidinet.pth"
	_download_file "$ModelsControlDir/mlsd" "https://huggingface.co/lllyasviel/ControlNet/resolve/main/annotator/ckpts/mlsd_large_512_fp32.pth"
	_download_file "$ModelsControlDir/anime_face_segment" "https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/Annotators/UNet.pth"
	_download_file "$ModelsControlDir/lineart" "https://huggingface.co/lllyasviel/Annotators/resolve/main/sk_model.pth"
	_download_file "$ModelsControlDir/lineart" "https://huggingface.co/lllyasviel/Annotators/resolve/main/sk_model2.pth"
	_download_file "$ModelsControlDir/hed" "https://huggingface.co/lllyasviel/Annotators/resolve/main/ControlNetHED.pth"
	_download_file "$ModelsControlDir/openpose" "https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/Annotators/rtmpose-m_simcc-ap10k_pt-aic-coco_210e-256x256-7a041aa1_20230206.onnx"
	_download_file "$ModelsControlDir/openpose" "https://huggingface.co/yzd-v/DWPose/resolve/main/dw-ll_ucoco_384.onnx"
	_download_file "$ModelsControlDir/openpose" "https://huggingface.co/lllyasviel/Annotators/resolve/main/hand_pose_model.pth"
	_download_file "$ModelsControlDir/openpose" "https://huggingface.co/lllyasviel/Annotators/resolve/main/facenet.pth"
	_download_file "$ModelsControlDir/manga_line" "https://huggingface.co/lllyasviel/Annotators/resolve/main/erika.pth"
	_download_file "$ModelsControlDir/lama" "https://huggingface.co/lllyasviel/Annotators/resolve/main/ControlNetLama.pth"
	_download_file "$ModelsControlDir/uniformer" "https://huggingface.co/lllyasviel/ControlNet/resolve/main/annotator/ckpts/upernet_global_small.pth"
	_download_file "$ModelsControlDir/openpose" "https://huggingface.co/lllyasviel/Annotators/resolve/main/body_pose_model.pth"
	_download_file "$ModelsControlDir/openpose" "https://huggingface.co/yzd-v/DWPose/resolve/main/yolox_l.onnx"
	_download_file "$ModelsControlDir/lineart_anime" "https://huggingface.co/lllyasviel/Annotators/resolve/main/netG.pth"
	_download_file "$ModelsControlDir/densepose" "https://huggingface.co/LayerNorm/DensePose-TorchScript-with-hint-image/resolve/main/densepose_r50_fpn_dl.torchscript"
	_download_file "$ModelsControlDir/normal_bae" "https://huggingface.co/lllyasviel/Annotators/resolve/main/scannet.pt"
	_download_file "$ModelsControlDir/leres" "https://huggingface.co/lllyasviel/Annotators/resolve/main/latest_net_G.pth"
	_download_file "$ModelsControlDir/midas" "https://huggingface.co/lllyasviel/ControlNet/resolve/main/annotator/ckpts/dpt_hybrid-midas-501f0c75.pt"
	_download_file "$ModelsControlDir/hand_refiner/hr16/ControlNet-HandRefiner-pruned" "https://huggingface.co/hr16/ControlNet-HandRefiner-pruned/resolve/main/hrnetv2_w64_imagenet_pretrained.pth"
	_download_file "$ModelsControlDir/leres" "https://huggingface.co/lllyasviel/Annotators/resolve/main/res101.pth"
	_download_file "$ModelsControlDir/oneformer" "https://huggingface.co/lllyasviel/Annotators/resolve/main/150_16_swin_l_oneformer_coco_100ep.pth"
	_download_file "$ModelsControlDir/oneformer" "https://huggingface.co/lllyasviel/Annotators/resolve/main/250_16_swin_l_oneformer_ade20k_160k.pth"
	_download_file "$ModelsControlDir/hand_refiner/hr16/ControlNet-HandRefiner-pruned" "https://huggingface.co/hr16/ControlNet-HandRefiner-pruned/resolve/main/graphormer_hand_state_dict.bin"
	_download_file "$ModelsControlDir/depth_anything" "https://huggingface.co/spaces/LiheYoung/Depth-Anything/resolve/main/checkpoints/depth_anything_vitl14.pth"
	_download_file "$ModelsControlDir/zoedepth" "https://huggingface.co/lllyasviel/Annotators/resolve/main/ZoeD_M12_N.pt"
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
