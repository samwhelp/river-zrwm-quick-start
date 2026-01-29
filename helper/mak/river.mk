

river-source-download:
	@river-source-download.sh
.PHONY: river-source-download


river-build-essential:
	@river-build-essential.sh
.PHONY: river-build-essential


river-build-and-install:
	@river-build-and-install.sh
.PHONY: river-build-and-install


river-config-install:
	@river-config-install.sh
.PHONY: river-config-install
