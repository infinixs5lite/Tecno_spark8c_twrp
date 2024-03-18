#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-KG5k device
$(call inherit-product, device/tecno/TECNO-KG5k/device.mk)

PRODUCT_DEVICE := TECNO-KG5k
PRODUCT_NAME := omni_TECNO-KG5k
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KG5k
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="KG5k-user 11 RP1A.201005.001 394 release-keys"

BUILD_FINGERPRINT := TECNO/F062/TECNO-KG5k:11/RP1A.201005.001/GL-V040-20220328:user/release-keys
