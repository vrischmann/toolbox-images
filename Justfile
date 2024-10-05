build: build-ruby build-zig

build-ruby:
	podman build --squash --tag ruby-toolbox:40 -f ruby/Containerfile .

build-zig:
	podman build --squash --tag zig-toolbox:rawhide -f zig/Containerfile .

build-debian:
	podman build --squash --tag debian-toolbox:bookworm -f debian/Containerfile.bookworm .

build-archlinux:
	podman build --squash --tag archlinux-toolbox:latest -f archlinux/Containerfile .
