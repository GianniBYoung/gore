#!/bin/bash

set -ouex pipefail

dnf5 install -y fish

#### Example for enabling a System Unit File

systemctl enable podman.socket nfs-server.service podman-auto-update.timer
