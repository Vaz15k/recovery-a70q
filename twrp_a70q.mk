#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from a70q device
$(call inherit-product, device/samsung/a70q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := twrp_a70q
PRODUCT_DEVICE := a70q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A705
PRODUCT_MANUFACTURER := samsung

BUILD_FINGERPRINT := "samsung/a70qxx/a70q:11/RP1A.200720.012/A705FNXXU5DWB4:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a70qxx-user 11 RP1A.200720.012 A705FNXXU5DWB4 release-keys" \
    PRODUCT_NAME="a70q" \
    TARGET_DEVICE="a70q"

PRODUCT_GMS_CLIENTID_BASE := android-samsung