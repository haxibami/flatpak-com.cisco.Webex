#!/usr/bin/env sh

set -e

bsdtar -Oxf webex.deb 'data.tar.xz' |
  bsdtar -xf - \
    --strip-components=3 \
    --exclude './opt/Webex/lib/libstdc++.so.6' \
    ./opt/Webex
rm webex.deb
