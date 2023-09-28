#!/usr/bin/env bash

export SCRIPT_DIR=`dirname "$0"`

export PACKAGES_VERSION=`cat "$SCRIPT_DIR/PACKAGES-VERSION"`
wget "https://github.com/bcdevices/ly10-buildroot-packages/releases/download/v$PACKAGES_VERSION/buildroot-packages-$PACKAGES_VERSION.tar.gz" 
tar xzf "$SCRIPT_DIR/buildroot-packages-$PACKAGES_VERSION.tar.gz"
rm "$SCRIPT_DIR/buildroot-packages-$PACKAGES_VERSION.tar.gz"
ln -sf "$SCRIPT_DIR/package-$PACKAGES_VERSION" "$SCRIPT_DIR/package"
