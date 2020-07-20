FROM archlinux:latest

ENV container docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

ENV LANG=en_US.UTF-8

RUN pacman -Suy --noconfirm base-devel && \
    rm -rf /var/cache/pacman/pkg/*

RUN useradd -m devel && usermod -aG wheel devel && echo "devel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/devel

ENTRYPOINT ["/usr/lib/systemd/systemd"]
