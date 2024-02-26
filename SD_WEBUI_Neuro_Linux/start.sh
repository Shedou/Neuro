#!/usr/bin/env bash
# Script version 1.0
# SD WebUI Neuro Linux v1 start file

# Settings:
export COMMANDLINE_ARGS="--skip-prepare-environment --skip-version-check --no-download-sd-model --skip-torch-cuda-test --medvram"


# Don't change!
path_to_script="$( dirname "$(readlink -f "$0")")"
webui_folder="webui170"
export TORCH_HOME="$path_to_script/$webui_folder/models/ControlNet-fking_torch_cache_dependencies"
path_to_venv="$path_to_script/$webui_folder/venv"


# Check and fix the f**king dependency paths!
check="command = /usr/bin/python3 -m venv $path_to_venv"
if [ "$( grep command "$path_to_venv/pyvenv.cfg")" != "$check" ]; then
	sed -i "/command/c\command = /usr/bin/python3 -m venv $path_to_venv" "$path_to_venv/pyvenv.cfg"
	sed -i "/venv\/bin\/python3/c\#!$path_to_venv/bin/python3" "$path_to_venv/bin/"*
	sed -i "/\/venv/c\setenv VIRTUAL_ENV \"$path_to_venv\"" "$path_to_venv/bin/activate.csh"
	sed -i "/\/venv/c\VIRTUAL_ENV=\"$path_to_venv\"" "$path_to_venv/bin/activate"
	sed -i "/\/venv/c\set -gx VIRTUAL_ENV \"$path_to_venv\"" "$path_to_venv/bin/activate.fish"
	echo "Dependency paths fixed!"
fi

cd "$path_to_script/$webui_folder"

"$path_to_script/$webui_folder/webui.sh"
