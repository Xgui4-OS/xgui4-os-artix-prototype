#!/bin/sh

cd ${WINEPREFIX:-~/.wine}/drive_c/windows/Fonts && for i in /usr/share/fonts/**/*.{ttf,otf}; do ln -s "$i"; done
winetricks fontsmooth=rgb &

rm -f ~/.config/autostart/wine-config.*
