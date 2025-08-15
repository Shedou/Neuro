#!/usr/bin/env bash
# Script version 1.0

Path_To_Script="$( dirname "$(readlink -f "$0")")"
User_Continue=""

if [ ! -e "$Path_To_Script/hf_download" ]; then
	echo -e "ATTENTION! Models folder not found!
 $Path_To_Script/hf_download
 
 Models will be automatically downloaded from the Internet if you continue.
 Please make sure you have at least 50 GB of free disk space!
 
 Or copy the models manually if you already have a folder with models for FramePack Neuro.
 
 Enter \"y\" or \"yes\" to continue."
	read -r User_Continue
	
	if [ "$User_Continue" == "y" ] || [ "$User_Continue" == "yes" ]; then echo " Continue..."
	else echo "Abort..."; exit 0; fi
fi

PathToVenv="$Path_To_Script/venvneuro"
check="command = /usr/bin/python3 -m venv $PathToVenv"
if [ "$( grep command "$PathToVenv/pyvenv.cfg")" != "$check" ]; then
	sed -i "/command/c\command = /usr/bin/python3 -m venv $PathToVenv" "$PathToVenv/pyvenv.cfg"
	sed -i "/venv\/bin\/python3/c\#!$PathToVenv/bin/python3" "$PathToVenv/bin/"*
	sed -i "/\/venv/c\setenv VIRTUAL_ENV \"$PathToVenv\"" "$PathToVenv/bin/activate.csh"
	sed -i "/\/venv/c\VIRTUAL_ENV=\"$PathToVenv\"" "$PathToVenv/bin/activate"
	sed -i "/\/venv/c\set -gx VIRTUAL_ENV \"$PathToVenv\"" "$PathToVenv/bin/activate.fish"
	echo "Python paths fixed!"
fi

source "$PathToVenv/bin/activate"

#export HF_HUB_OFFLINE=True
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
export TORCH_HOME="$Path_To_Script/torchcache"

python "$Path_To_Script/demo_gradio.py"
