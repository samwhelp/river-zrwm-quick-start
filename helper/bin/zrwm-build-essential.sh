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
### Head: Model / mod_zrwm_build_essential
##

mod_zrwm_build_essential () {

	#echo mod_zrwm_build_essential

	echo
	echo "##"
	echo "## ## Do Nothing"
	echo "##"
	echo


	return

	echo
	echo sudo pacman -Sy --needed fcft
	echo
	sudo pacman -Sy --needed fcft

}

##
### Tail: Model / mod_zrwm_build_essential
################################################################################


################################################################################
### Head: Portal / portal_zrwm_build_essential
##

portal_zrwm_build_essential () {

	mod_zrwm_build_essential

}

##
### Tail: Portal / portal_zrwm_build_essential
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_zrwm_build_essential "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
