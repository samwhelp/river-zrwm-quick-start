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
### Head: Model / mod_wallpaper_package_install
##

mod_wallpaper_package_install () {

	sys_wallpaper_package_install

}

sys_wallpaper_package_install () {

	echo
	echo sudo pacman -Sy --needed mate-backgrounds
	echo
	sudo pacman -Sy --needed mate-backgrounds

}

##
### Tail: Model / mod_wallpaper_package_install
################################################################################


################################################################################
### Head: Portal / portal_wallpaper_package_install
##

portal_wallpaper_package_install () {

	mod_wallpaper_package_install

}

##
### Tail: Portal / portal_wallpaper_package_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_wallpaper_package_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
