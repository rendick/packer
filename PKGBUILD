pkgname=LinuxPkg-Helper
pkgver=1.2.1
pkgrel=1
pkgdesc="A script for comfortable package installation."
arch=('x86_64')
url="https://github.com/naddurkostia/${pkgname}"
license=('MIT')
depends=('bash' 'dialog')
source=("https://github.com/naddurkostia/${pkgname}/archive/${pkgver}.tar.gz")
md5sums=('SKIP')

package() {
  install -Dm755 "$srcdir/$pkgname-$pkgver/main_pkg.sh" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "$srcdir/$pkgname-$pkgver/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
