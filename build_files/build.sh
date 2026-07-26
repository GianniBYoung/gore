#!/bin/bash

set -ouex pipefail

dnf5 install -y fish

# deps for yazi
dnf5 install -y  \
  ffmpeg \
  p7zip p7zip-plugins \
  poppler-utils \
  ImageMagick \
  wl-clipboard

# podman 6 please
dnf5 install -y fedora-repos-rawhide && dnf5 upgrade -y --enablerepo=rawhide podman netavark crun
dnf5 clean all

#### Example for enabling a System Unit File

systemctl enable podman.socket nfs-server.service podman-auto-update.timer
