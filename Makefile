
#GITSHA := $(shell git describe --all --long | awk -F'-g' '{print $$NF}')

.PHONY: all
all:
	sudo docker build -t trentm/all-the-dockers .

.PHONY: publish
publish:
	sudo docker push trentm/all-the-dockers:latest

