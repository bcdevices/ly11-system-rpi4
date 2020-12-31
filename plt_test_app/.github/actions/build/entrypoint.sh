#!/bin/bash

mkdir -p $GITHUB_WORKSPACE/dist
mix local.hex --force
mix archive.install hex nerves_bootstrap --force
MIX_TARGET=ly11_rpi4 mix deps.get
MIX_TARGET=ly11_rpi4 mix firmware --output $GITHUB_WORKSPACE/dist/test.fw
