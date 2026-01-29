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
### Head: Model / mod_river_build_essential
##

mod_river_build_essential () {

	#echo mod_river_build_essential

	echo
	echo sudo pacman -Sy --needed zig wayland wayland-protocols libxkbcommon libevdev pixman pkg-config scdoc
	echo
	sudo pacman -Sy --needed zig wayland wayland-protocols libxkbcommon libevdev pixman pkg-config scdoc

}

##
### Tail: Model / mod_river_build_essential
################################################################################


################################################################################
### Head: Portal / portal_river_build_essential
##

portal_river_build_essential () {

	mod_river_build_essential

}

##
### Tail: Portal / portal_river_build_essential
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_river_build_essential "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
