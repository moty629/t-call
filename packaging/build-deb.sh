#!/bin/sh
set -e

PKG="tcall"
VER="0.1"
ARCH="all"
BUILD="/tmp/${PKG}_${VER}"
OUT="${PKG}_${VER}_${ARCH}.deb"

rm -rf "$BUILD"

mkdir -p "$BUILD/DEBIAN"
mkdir -p "$BUILD/usr/local/bin"
mkdir -p "$BUILD/etc/systemd/system"

cp debian/control "$BUILD/DEBIAN/control"
cp debian/postinst "$BUILD/DEBIAN/postinst"
cp debian/prerm "$BUILD/DEBIAN/prerm"

chmod 755 "$BUILD/DEBIAN/postinst" "$BUILD/DEBIAN/prerm"

cp bin/* "$BUILD/usr/local/bin/"
chmod 755 "$BUILD/usr/local/bin/"*

cp systemd/tcall.service "$BUILD/etc/systemd/system/"

dpkg-deb --build "$BUILD" "$OUT"

echo "Package built: $OUT"
