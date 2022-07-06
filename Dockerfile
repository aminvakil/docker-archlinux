FROM archlinux:base-20220703.0.65849

ENV container docker

LABEL maintainer="Amin Vakil <info@aminvakil.com>"

RUN pacman -Syu --noconfirm && \
    rm -rf /var/cache/pacman/pkg/*

ENTRYPOINT ["/usr/lib/systemd/systemd"]
