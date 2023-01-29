# docker-mod-openssh-server-tweaks

A Docker mod for linuxserver.io's openssh-server Docker image

This mod allows:

- Tweaking the umask in `/etc/profile` (`TWEAK_PROFILE_UMASK`)
- Tweaking the home directory of the user (`TWEAK_USER_HOME`)
  (Note: You need to set up SSH keys etc. yourself if you use this.)
- Tweaking the gid of the users group (`TWEAK_USERS_GID`)

I use these tweaks to align my NAS defaults + my expectations with the
settings inside an LSIO openssh-server container.

## How to use

For example, in a `docker-compose.yml` file:

```
# [...]
services:
  sshd-halde:
    image: lscr.io/linuxserver/openssh-server:latest
    # [...]
    environment:
      - DOCKER_MODS=ghcr.io/neingeist/docker-mod-openssh-server-tweaks
      - TWEAK_PROFILE_UMASK=0002
      - TWEAK_USER_HOME=/home/myuser
      - TWEAK_USERS_GID=100
# [...]
```
