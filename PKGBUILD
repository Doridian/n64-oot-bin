# Maintainer: Doridian <archlinux at doridian dot net>

pkgname=n64-oot-bin
pkgver=9.0.2
pkgrel=1
pkgdesc='Recompilation of Ocarina of Time for modern systems'
arch=('x86_64')
url='https://github.com/HarbourMasters/Shipwright'
license=('MIT')
makedepends=('unzip')
depends=('zlib' 'fuse2')
options=('!strip' '!debug')
_relfile="SoH-Blair-Charlie-Linux.zip"
source=(
    "${url}/releases/download/${pkgver}/${_relfile}"
    'baserom.z64' # Copyrighted, you have to find this yourself, make sure to check on https://ship.equipment/
    'launch.sh'
    'n64-oot-bin.desktop'
    'logo.png'
)
sha256sums=(
    'e8ffa02daded3ded2caabc7e93c4bf1c5e656519113adbe06ae75c6c508d9866'
    'SKIP'
    'SKIP'
    'SKIP'
    'SKIP'
)

build() {
  cd "${srcdir}"
  unzip -o "${_relfile}"
}

package() {
  cd "${srcdir}"

  install -Dm644 n64-oot-bin.desktop "${pkgdir}/usr/share/applications/n64-oot-bin.desktop"
  install -Dm644 logo.png "${pkgdir}/usr/share/pixmaps/n64-oot-bin.png"

  install -Dm755 launch.sh "${pkgdir}/opt/n64/oot-bin/launch.sh"
  install -Dm755 soh.appimage "${pkgdir}/opt/n64/oot-bin/soh.appimage"
  install -Dm644 baserom.z64 "${pkgdir}/opt/n64/oot-bin/baserom.z64"
}

# vim:set ts=2 sw=2 et:
