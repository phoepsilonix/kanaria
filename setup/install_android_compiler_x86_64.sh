#!/bin/bash

requireArch="x86_64"
currentArch=$(arch)

if [ "${currentArch}" != "${requireArch}" ]; then
  echo "Not an ${requireArch} architecture."
  exit 1
fi

cd `dirname ${0}`
archiveName=android-ndk-r26d-linux.zip

wget https://dl.google.com/android/repository/android-ndk-r26d-linux.zip?hl=ja -O $archiveName
unzip $archiveName
rm -f $archiveName

mv ./android-ndk-r26d ../libs
