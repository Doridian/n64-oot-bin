#!/bin/sh
set -e

export SHIP_HOME="${HOME}/.config/oot"
export SDL_VIDEODRIVER=wayland
mkdir -p "${SHIP_HOME}"

if [ ! -f "${SHIP_HOME}/baserom.z64" ]; then
  ln -sf /opt/oot-bin/baserom.z64 "${SHIP_HOME}/baserom.z64"
fi

cd "${SHIP_HOME}"
exec /opt/oot-bin/soh.appimage
