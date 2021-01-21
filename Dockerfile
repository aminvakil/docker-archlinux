FROM archlinux:base-20210120.0.13969

ENV container docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

ENV LANG=en_US.UTF-8

RUN pacman -Suy --noconfirm && \
    rm -rf /var/cache/pacman/pkg/*

ENTRYPOINT ["/usr/lib/systemd/systemd"]
