FROM archlinux:base-20260802.0.566770

ENV container=docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

RUN pacman -Syu --noconfirm && \
    rm -rf /var/cache/pacman/pkg/*

ENTRYPOINT ["/usr/lib/systemd/systemd"]
