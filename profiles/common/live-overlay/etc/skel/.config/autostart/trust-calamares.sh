#!/bin/sh

calamares=~/Desktop/calamares-config-switcher.desktop
while [ ! -f $calamares ]; do sleep 0.5; done
gio set -t string $calamares metadata::xfce-exe-checksum "$(sha256sum $calamares | awk '{print $1}')"
