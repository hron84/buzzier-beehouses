topdir := $(shell pwd)

all: buzzier-beehouses.zip

install: buzzier-beehouses.zip
	@if [ -z "$(DESTDIR)" ]; then \
		echo "No destination dir specified"; \
		exit 1; \
	fi; \
	install buzzier-beehouses.zip "$(DESTDIR)"/resourcepacks/buzzier-beehouses.zip

buzzier-beehouses.zip: src/resources/pack.mcmeta
	@echo " [ZIP] $@" && \
	cd src/resources/ && \
	zip -qqr $(topdir)/$@ assets pack.mcmeta



