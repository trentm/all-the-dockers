
#GITSHA := $(shell git describe --all --long | awk -F'-g' '{print $$NF}')

ifeq ($(shell uname -s),Darwin)
	# Typically using boot2docker, so don't need sudo here.
	SUDO:=
else
	SUDO:=sudo
endif

.PHONY: all
all:
	$(SUDO) docker build -t trentm/all-the-dockers .

.PHONY: publish
publish:
	$(SUDO) docker push trentm/all-the-dockers:latest
