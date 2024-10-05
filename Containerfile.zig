FROM registry.fedoraproject.org/fedora-toolbox:rawhide

ARG NAME=zig-toolbox
ARG VERSION=rawhide
LABEL com.github.containers.toolbox="true" \
      name="$NAME" \
      version="$VERSION" \
      usage="This image is meant to be used with the toolbox(1) command" \
      summary="Image for building and working with zig"

RUN dnf group install -y c-development
RUN dnf install -y \
	fish kitty-terminfo ripgrep \
	zlib-devel libxml2-devel libzstd-devel \
	cmake ninja-build llvm llvm-devel clang-devel lld lld-devel
RUN dnf clean all
