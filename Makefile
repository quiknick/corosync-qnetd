.PHONY: build push

TAG ?= quiknick/corosync-qnetd:latest

build:
	docker pull debian:bullseye-slim
	docker build -t $(TAG) .

push:
    docker push $(TAG)