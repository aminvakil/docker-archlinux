FROM archlinux:base-20201206.0.10501

ENV container docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

ENV LANG=en_US.UTF-8

RUN pacman -Suy --noconfirm base-devel && \
    rm -rf /var/cache/pacman/pkg/*

RUN useradd -m devel && echo "devel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/01_devel

ENTRYPOINT ["/usr/lib/systemd/systemd"]
