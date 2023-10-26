#!/usr/bin/env bash

export SCRIPT_NAME=`realpath "$0"`
export SCRIPT_DIR=`dirname "$SCRIPT_NAME"`

make -C "$SCRIPT_DIR" sync-packages

