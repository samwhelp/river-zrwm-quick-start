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
### Head: Portal / portal_help
##

portal_help () {

cat << __EOF__

Usage:

	$ make [action]

Example:

	$ make
	$ make help


	$ make river-source-download
	$ make river-build-essential
	$ make river-build-and-install
	$ make river-config-install


	$ make zrwm-source-download
	$ make zrwm-build-essential
	$ make zrwm-build-and-install-main
	$ make zrwm-config-install


	$ make tool-package-install
	$ make tool-config-install


	$ make wallpaper-package-install
	$ make wallpaper-config-install


	$ make clean


Debug:
	$ export IS_DEBUG=true

__EOF__

}

##
### Tail: Portal / portal_help
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_help "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
