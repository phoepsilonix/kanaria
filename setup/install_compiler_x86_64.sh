#!/bin/bash

requireArch="x86_64"
currentArch=$(arch)

if [ "${currentArch}" != "${requireArch}" ]; then
  echo "Not an ${requireArch} architecture."
  exit 1
fi

apt-get install -y \
  gcc-12 \
  gcc-12-arm-linux-gnueabihf \
  gcc-12-aarch64-linux-gnu \
  gcc-12-i686-linux-gnu \
  mingw-w64
