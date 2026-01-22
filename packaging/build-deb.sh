#!/bin/sh
set -e

PKG="tcall"
VER="0.1"
ARCH="all"
BUILD="/tmp/${PKG}_${VER}"

rm -rf "$BUILD" *.deb

mkdir -p "$BUILD/DEBIAN"
mkdir -p "$BUILD/usr/local/bin"
mkdir -p "$BUILD/etc/profile.d"
mkdir -p "$BUILD/etc/tcall"
mkdir -p "$BUILD/etc/systemd/system"

# debian metadata
cp debian/control "$BUILD/DEBIAN/control"
cp debian/postinst "$BUILD/DEBIAN/postinst"
cp debian/prerm "$BUILD/DEBIAN/prerm"
chmod 755 "$BUILD/DEBIAN/"*
cp debian/postrm "$BUILD/DEBIAN/postrm"
chmod 755 "$BUILD/DEBIAN/postrm"


# binaries
cp bin/* "$BUILD/usr/local/bin/"
cp tcall "$BUILD/usr/local/bin/"

# policy
cp policy.txt "$BUILD/etc/tcall/policy.txt"

# profile hook
cp profile.d/tcall.sh "$BUILD/etc/profile.d/tcall.sh"

# systemd
cp systemd/tcall.service "$BUILD/etc/systemd/system/tcall.service"

dpkg-deb --build "$BUILD" "${PKG}_${VER}_${ARCH}.deb"

echo "Built ${PKG}_${VER}_${ARCH}.deb"
