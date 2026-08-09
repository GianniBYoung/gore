#!/bin/bash

set -ouex pipefail


# deps for yazi + fish too
dnf5 install -y fish \
  ffmpeg \
  fish \
  p7zip p7zip-plugins \
  poppler-utils \
  ImageMagick \
  wl-clipboard

# podman 6 please
dnf5 install -y fedora-repos-rawhide && dnf5 upgrade -y --enablerepo=rawhide podman netavark crun
dnf5 clean all

#### Example for enabling a System Unit File

systemctl enable podman.socket nfs-server.service podman-auto-update.timer

# Install Yazi

curl -LO https://github.com/sxyazi/yazi/releases/latest/download/yazi-x86_64-unknown-linux-gnu.zip
7z x yazi-x86_64-unknown-linux-gnu.zip
mv yazi-x86_64-unknown-linux-gnu/{yazi,ya} /usr/bin/
rm -rf yazi-x86_64-unknown-linux-gnu*
