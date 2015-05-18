
#GITSHA := $(shell git describe --all --long | awk -F'-g' '{print $$NF}')

ifeq ($(shell uname -s),Darwin)
	# Typically using boot2docker, so don't need sudo here.
	SUDO:=
else
	SUDO:=sudo
endif
DOCKER ?= docker

.PHONY: all
all:
	$(SUDO) $(DOCKER) build -t trentm/all-the-dockers .

.PHONY: publish
publish:
	$(SUDO) $(DOCKER) push trentm/all-the-dockers:latest
