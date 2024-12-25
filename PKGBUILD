# Maintainer: Doridian <archlinux at doridian dot net>

pkgname=n64-oot-bin
pkgver=8.0.6
pkgrel=1
pkgdesc='Recompilation of Ocarina of Time for modern systems'
arch=('x86_64')
url='https://github.com/HarbourMasters/Shipwright'
license=('MIT')
makedepends=('unzip')
depends=('zlib' 'fuse2')
options=('!strip' '!debug')
_relfile="SoH-MacReady-Golf-Linux-Performance.zip"
source=(
    "${url}/releases/download/${pkgver}/${_relfile}"
    'baserom.z64' # Copyrighted, you have to find this yourself, make sure to check on https://ship.equipment/
    'launch.sh'
    'n64-oot-bin.desktop'
    'logo.png'
)
sha256sums=(
    '570dd10a4d2f0fad984acd0df88f16845a3479b0b7e8fae7ca5ec1f698523752'
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
