#!/bin/sh
set -eu

REPO=/var/tmp/yum_vuescan

ARCH=x86_64
VERSION=$(curl -s http://static.hamrick.com/vuescan_version.txt)
TARGET="$REPO/$ARCH/vuescan-$VERSION-0.$ARCH.rpm"

if ! [ -f "$TARGET" ]; then
  mkdir -p $(dirname "$TARGET")
  curl -sLo "$TARGET" https://www.hamrick.com/files/vuex6497.rpm
  createrepo -q "$REPO"
fi
