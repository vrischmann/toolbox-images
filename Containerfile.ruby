FROM registry.fedoraproject.org/fedora-toolbox:40

ARG NAME=ruby-toolbox
ARG VERSION=40
LABEL com.github.containers.toolbox="true" \
      name="$NAME" \
      version="$VERSION" \
      usage="This image is meant to be used with the toolbox(1) command" \
      summary="Image for building and working with ruby"

RUN dnf -y install dnf-plugins-core && \
	dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

RUN dnf group install -y c-development
RUN dnf install -y \
	fish kitty-terminfo ripgrep \
	docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin \
	make ruby ruby-devel rubygems
RUN dnf clean all