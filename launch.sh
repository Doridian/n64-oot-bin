#!/bin/sh
set -e

export SHIP_HOME="${HOME}/.config/n64/oot"
export SDL_VIDEODRIVER=wayland
mkdir -p "${SHIP_HOME}"

if [ ! -f "${SHIP_HOME}/baserom.z64" ]; then
  ln -sf /opt/n64/oot-bin/baserom.z64 "${SHIP_HOME}/baserom.z64"
fi

cd "${SHIP_HOME}"
exec /opt/n64/oot-bin/soh.appimage
