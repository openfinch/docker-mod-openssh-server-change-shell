FROM scratch

LABEL maintainer="openfinch"
LABEL org.opencontainers.image.source="https://github.com/openfinch/docker-mod-openssh-server-change-shell"

COPY root/ /
