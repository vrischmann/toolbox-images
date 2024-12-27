build: build-ruby build-zig build-debian build-ubuntu build-archlinux

build-ruby:
	podman build --squash --tag ruby-toolbox:41 -f ruby/Containerfile .

build-zig:
	podman build --squash --tag zig-toolbox:41 -f zig/Containerfile .

build-debian:
	podman build --squash --tag debian-toolbox:bookworm -f debian/Containerfile.bookworm .

build-ubuntu:
	podman build --squash --tag ubuntu-toolbox:oracular -f ubuntu/Containerfile.oracular .

build-archlinux:
	podman build --squash --tag archlinux-toolbox:latest -f archlinux/Containerfile .

build-rpmdev:
	podman build --squash --tag rpmdev-toolbox:rawhide -f rpmdev/Containerfile .

