#
# Copyright (C) 2022 Nusantara Android Development
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from RMX2001 device makefile
$(call inherit-product, device/realme/RMX2001/device.mk)

# Call proprietary blob setup
$(call inherit-product, vendor/realme/RMX2001/RMX2001-vendor.mk)

# Inherit some common keepQASSA stuff.
# WITH_GAPPS=true
$(call inherit-product, vendor/qassa/config/common_full_phone.mk)
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_RMX2001
PRODUCT_DEVICE := RMX2001
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2001
PRODUCT_MANUFACTURER := realme

# Build info
BUILD_FINGERPRINT := "realme/RMX2001/RMX2001L1:10/QP1A.190711.020/1594211000:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2001 \
    PRODUCT_NAME=RMX2001 \
    PRIVATE_BUILD_DESC="full_oppo6785-user 10 QP1A.190711.020 0b36b6c4f9b3bf3b release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
