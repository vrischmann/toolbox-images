#!/usr/bin/env fish

podman build --pull -f Containerfile.debian-buster -t "debian-toolbox:buster"
podman build --pull -f Containerfile.debian-bullseye -t "debian-toolbox:bullseye"
podman build --pull -f Containerfile.archlinux -t "archlinux-toolbox:latest"
