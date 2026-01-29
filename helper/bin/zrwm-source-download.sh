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
### Head: Model / mod_zrwm_source_download
##

mod_zrwm_source_download () {

	mod_master_prepare

	sys_zrwm_source_download_from_sourcehut


}

sys_zrwm_source_download_from_sourcehut () {

	##
	## ## https://sr.ht/~zuki/zrwm/
	##

	echo
	echo git clone "https://git.sr.ht/~zuki/zrwm" "${REF_MASTER_ZRWM_DIR_PATH}"
	echo
	git clone "https://git.sr.ht/~zuki/zrwm" "${REF_MASTER_ZRWM_DIR_PATH}"

}

##
### Tail: Model / mod_zrwm_source_download
################################################################################


################################################################################
### Head: Portal / portal_zrwm_source_download
##

portal_zrwm_source_download () {

	mod_zrwm_source_download

}

##
### Tail: Portal / portal_zrwm_source_download
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_zrwm_source_download "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
