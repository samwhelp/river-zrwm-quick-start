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
### Head: Model / mod_zrwm_build_and_install
##

mod_zrwm_build_and_install () {

	mod_master_prepare

	sys_zrwm_build_and_install

}

sys_zrwm_build_and_install () {

	echo
	echo mkdir -p "${REF_MASTER_ZRWM_DIR_PATH}"
	echo
	mkdir -p "${REF_MASTER_ZRWM_DIR_PATH}"




	echo
	echo cd "${REF_MASTER_ZRWM_DIR_PATH}"
	echo
	cd "${REF_MASTER_ZRWM_DIR_PATH}"




	##
	## ## build
	##

	echo
	echo make
	echo
	make




	##
	## ## install
	##

	echo
	echo sudo install -Dm755 "zrwm" "/usr/local/bin/zrwm"
	echo
	sudo install -Dm755 "zrwm" "/usr/local/bin/zrwm"


	echo
	echo sudo install -Dm755 "zrwm-msg" "/usr/local/bin/zrwm-msg"
	echo
	sudo install -Dm755 "zrwm-msg" "/usr/local/bin/zrwm-msg"



	echo
	echo cd "${OLDPWD}"
	echo
	cd "${OLDPWD}"

}

##
### Tail: Model / mod_zrwm_build_and_install
################################################################################


################################################################################
### Head: Portal / portal_zrwm_build_and_install
##

portal_zrwm_build_and_install () {

	mod_zrwm_build_and_install

}

##
### Tail: Portal / portal_zrwm_build_and_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_zrwm_build_and_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
