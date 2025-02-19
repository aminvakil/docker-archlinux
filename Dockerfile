FROM archlinux:base-20250216.0.309127

ENV container=docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

RUN pacman -Syu --noconfirm && \
    rm -rf /var/cache/pacman/pkg/*

ENTRYPOINT ["/usr/lib/systemd/systemd"]
