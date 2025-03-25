FROM archlinux:base-20250323.0.325468

ENV container=docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

RUN pacman -Syu --noconfirm && \
    rm -rf /var/cache/pacman/pkg/*

ENTRYPOINT ["/usr/lib/systemd/systemd"]
