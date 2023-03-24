# docker-mod-openssh-server-change-shell

 A Docker mod for linuxserver.io's openssh-server Docker image allowing you to change the default shell 

This mod allows:

- Tweaking the shell of the user (`TWEAK_USER_SHELL`)

## How to use

For example, in a `docker-compose.yml` file:

```
# [...]
services:
  sshd-halde:
    image: lscr.io/linuxserver/openssh-server:latest
    # [...]
    environment:
      - DOCKER_MODS=ghcr.io/openfinch/docker-mod-openssh-server-change-shell
      - TWEAK_USER_SHELL=/usr/sbin/nologin
# [...]
```
