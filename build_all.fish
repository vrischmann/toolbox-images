#!/usr/bin/env fish

podman build -f Containerfile.debian-buster -t "debian:buster"
podman build -f Containerfile.debian-bullseye -t "debian:bullseye"
