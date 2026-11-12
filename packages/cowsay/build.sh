#!/bin/sh
set -eu

install -Dm755 "$SRCDIR/cowsay" "$PKGDIR/bin/cowsay"
ln -s cowsay "$PKGDIR/bin/cowthink"

install -d "$PKGDIR/share/cowsay/cows"
install -d "$PKGDIR/share/man/man1"
install -d "$PKGDIR/share/licenses/cowsay"

install -m644 "$SRCDIR/cows/"* "$PKGDIR/share/cowsay/cows/"
install -m644 "$SRCDIR/cowsay.1" "$PKGDIR/share/man/man1/cowsay.1"
ln -s cowsay.1 "$PKGDIR/share/man/man1/cowthink.1"
install -m644 "$SRCDIR/LICENSE.txt" "$PKGDIR/share/licenses/cowsay/LICENSE"
