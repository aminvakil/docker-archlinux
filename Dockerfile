FROM archlinux:latest

ENV container docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

ENV LANG=en_US.UTF-8

RUN pacman -Suy --noconfirm base-devel && \
    rm -rf /var/cache/pacman/pkg/*

RUN useradd -M devel && usermod -aG wheel devel && echo "devel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/devel

ENTRYPOINT ["/usr/sbin/init"]

USER devel
