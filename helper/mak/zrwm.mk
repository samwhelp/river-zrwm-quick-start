

zrwm-source-download:
	@zrwm-source-download.sh
.PHONY: zrwm-source-download


zrwm-build-essential:
	@zrwm-build-essential.sh
.PHONY: zrwm-build-essential


zrwm-build-and-install-main:
	@zrwm-build-and-install-main.sh
.PHONY: zrwm-build-and-install-main


zrwm-config-install:
	@zrwm-config-install.sh
.PHONY: zrwm-config-install
