#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Bash
##

set -e						## exit on error
set -o pipefail				## exit on pipeline error
set -u						## treat unset variable as error

##
### Tail: Bash
################################################################################


################################################################################
### Head: Init
##

REF_CMD_FILE_NAME="$(basename "${0}")"
REF_BASE_DIR_PATH="$(dirname "$(realpath "${0}")")"
REF_INIT_DIR_PATH="$(realpath "${REF_BASE_DIR_PATH}/../ext")"
. "${REF_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / mod_wallpaper_config_install
##

mod_wallpaper_config_install () {

	sys_wallpaper_config_install

}

sys_wallpaper_config_install () {


	local src_dir_path="${REF_ASSET_DIR_PATH}/config/wallpaper-config/overlay/usr/share/backgrounds"
	local des_dir_path="/usr/share/backgrounds"


	echo
	echo mkdir -p "${src_dir_path}"
	echo
	mkdir -p "${src_dir_path}"


	echo
	echo sudo mkdir -p "${des_dir_path}"
	echo
	sudo mkdir -p "${des_dir_path}"


	#echo
	#echo sudo cp -rfT "${src_dir_path}" "${des_dir_path}"
	#echo
	#sudo cp -rfT "${src_dir_path}" "${des_dir_path}"


	echo
	echo sudo cp -rfTv "${src_dir_path}" "${des_dir_path}"
	echo
	sudo cp -rfTv "${src_dir_path}" "${des_dir_path}"

}

##
### Tail: Model / mod_wallpaper_config_install
################################################################################


################################################################################
### Head: Portal / portal_wallpaper_config_install
##

portal_wallpaper_config_install () {

	mod_wallpaper_config_install

}

##
### Tail: Portal / portal_wallpaper_config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_wallpaper_config_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
