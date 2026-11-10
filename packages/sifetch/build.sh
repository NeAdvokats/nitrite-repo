#!/bin/sh
set -eu

make -C "$SRCDIR/src"
install -Dm755 "$SRCDIR/src/sifetch" "$PKGDIR/bin/sifetch"
