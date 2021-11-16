FROM archlinux:base-20211114.0.39041

ENV container docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

ENV LANG=en_US.UTF-8

RUN pacman -Syu --noconfirm && \
    rm -rf /var/cache/pacman/pkg/*

ENTRYPOINT ["/usr/lib/systemd/systemd"]
