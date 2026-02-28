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

#### Example for enabling a System Unit File

systemctl enable podman.socket nfs-server.service podman-auto-update.timer
