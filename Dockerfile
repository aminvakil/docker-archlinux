FROM archlinux:base-20220821.0.76637

ENV container docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

RUN pacman -Syu --noconfirm && \
    rm -rf /var/cache/pacman/pkg/*

ENTRYPOINT ["/usr/lib/systemd/systemd"]
