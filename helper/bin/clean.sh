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
### Head: Model / mod_clean
##

mod_clean () {

	#echo mod_clean

	echo
	echo sudo rm -rf "${REF_BUILD_DIR_PATH}"
	echo
	sudo rm -rf "${REF_BUILD_DIR_PATH}"

}

##
### Tail: Model / mod_clean
################################################################################


################################################################################
### Head: Portal / portal_clean
##

portal_clean () {

	mod_clean

}

##
### Tail: Portal / portal_clean
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_clean "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
