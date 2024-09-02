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

# Inherit from a34x device
$(call inherit-product, device/samsung/a34x/device.mk)

PRODUCT_DEVICE := a34x
PRODUCT_NAME := omni_a34x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A346B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_a34x-eng 16.1.0 SP2A.220405.004 eng.runner.20240726.113911 test-keys"

BUILD_FINGERPRINT := samsung/twrp_a34x/a34x:16.1.0/SP2A.220405.004/runner07261136:eng/test-keys
