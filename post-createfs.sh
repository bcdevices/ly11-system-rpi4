#!/bin/sh

set -e

# Create signed fit image
cp "${BINARIES_DIR}"/bcm2711-rpi-4-b.dtb "${BINARIES_DIR}"/bcm2711-rpi-4-b-pubkey.dtb

cd "${BINARIES_DIR}" && \
mkimage -f "${NERVES_DEFCONFIG_DIR}"/uboot/image.its -K bcm2711-rpi-4-b-pubkey.dtb -k "${NERVES_DEFCONFIG_DIR}"/keys -r image.fit


mkimage -A arm64 -O linux -T script -C none -a 0 -e 0 -n 'u-boot script' -d "${NERVES_DEFCONFIG_DIR}"/uboot/boot.cmd "${BINARIES_DIR}"/boot.scr

FWUP_CONFIG=$NERVES_DEFCONFIG_DIR/fwup.conf

# Run the common post-image processing for nerves
$BR2_EXTERNAL_NERVES_PATH/board/nerves-common/post-createfs.sh $TARGET_DIR $FWUP_CONFIG
