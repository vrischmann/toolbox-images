build: build-ruby build-zig

build-ruby:
	podman build --squash --tag ruby-toolbox:40 -f Containerfile.ruby .

build-zig:
	podman build --squash --tag zig-toolbox:rawhide -f Containerfile.zig .

build-debian:
	podman build --squash --tag debian-toolbox:bookworm -f Containerfile.debian-bookworm .

build-archlinux:
	podman build --squash --tag archlinux-toolbox:latest -f Containerfile.archlinux .
