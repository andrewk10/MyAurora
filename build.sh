#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos and custom rpms
# mullvad has to be layered locally for now no biggie :)
rpm-ostree install \
    screen \
    lynis \
    waydroid \
    rpms/teamviewer_15.53.6.x86_64.rpm

#### Example for enabling a System Unit File
# Worth noting that these unit files are enabled on the container and not the client
systemctl enable podman.socket
