#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twr/config/common.mk)

# Inherit from KG5k device
$(call inherit-product, device/tecno/KG5k/device.mk)

PRODUCT_DEVICE := KG5k
PRODUCT_NAME := twrp_KG5k
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KG5k
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

BUILD_FINGERPRINT := TECNO/F062/TECNO-KG5k:11/RP1A.201005.001/GL-V040-20220328:user/release-keys
