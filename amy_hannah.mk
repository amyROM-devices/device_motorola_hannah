#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/hannah/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common amyROM stuff.
$(call inherit-product, vendor/amy/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := amy_hannah
PRODUCT_DEVICE := hannah
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e⁵ plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hannah_t-user 8.0.0 OCPS27.91-150-8 2 release-keys" \
    PRODUCT_NAME="hannah"

BUILD_FINGERPRINT := motorola/hannah_t/hannah:8.0.0/OCP27.91-150-8/2:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
