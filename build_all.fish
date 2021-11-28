#!/usr/bin/env fish

podman build -f Containerfile.debian-buster -t "debian-toolbox:buster"
podman build -f Containerfile.debian-bullseye -t "debian-toolbox:bullseye"
podman build -f Containerfile.archlinux -t "archlinux-toolbox:latest"
