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
### Head: Model / mod_tool_config_install
##

mod_tool_config_install () {

	sys_tool_config_install

}

sys_tool_config_install () {


	local src_dir_path="${REF_ASSET_DIR_PATH}/config/tool-config/overlay/etc/skel"
	local des_dir_path="${HOME}"


	echo
	echo mkdir -p "${src_dir_path}"
	echo
	mkdir -p "${src_dir_path}"


	echo
	echo mkdir -p "${des_dir_path}"
	echo
	mkdir -p "${des_dir_path}"


	#echo
	#echo cp -rfT "${src_dir_path}" "${des_dir_path}"
	#echo
	#cp -rfT "${src_dir_path}" "${des_dir_path}"


	echo
	echo cp -rfTv "${src_dir_path}" "${des_dir_path}"
	echo
	cp -rfTv "${src_dir_path}" "${des_dir_path}"

}

##
### Tail: Model / mod_tool_config_install
################################################################################


################################################################################
### Head: Portal / portal_tool_config_install
##

portal_tool_config_install () {

	mod_tool_config_install

}

##
### Tail: Portal / portal_tool_config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_tool_config_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
