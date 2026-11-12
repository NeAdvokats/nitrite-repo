#!/bin/sh
set -eu

install -Dm755 "$SRCDIR/neofetch" "$PKGDIR/bin/neofetch"
