#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
include device/xiaomi/sm6250-common/BoardConfigCommon.mk

# Inherit proprietary blobs
-include vendor/xiaomi/curtana/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/curtana

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := curtana

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_curtana
TARGET_RECOVERY_DEVICE_MODULES := libinit_curtana

# HIDL
ODM_MANIFEST_SKUS += \
    joyeuse

ODM_MANIFEST_JOYEUSE_FILES := $(DEVICE_PATH)/manifest_joyeuse.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE := curtana,excalibur,gram,joyeuse,miatoll
