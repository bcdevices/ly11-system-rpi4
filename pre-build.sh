#!/usr/bin/env bash

local PACKAGES_VERSION=`cat "$NERVES_DEFCONFIG_DIR/PACKAGES-VERSION"`
echo $PACKAGES_VERSION
wget "https://github.com/bcdevices/ly10-buildroot-packages/releases/download/v$PACKAGES_VERSION/buildroot-packages-$PACKAGES_VERSION.tar.gz"
tar xzf "buildroot-packages-$PACKAGES_VERSION.tar.gz"
rm "buildroot-packages-$PACKAGES_VERSION.tar.gz"
ln -sf package-$PACKAGES_VERSION package
