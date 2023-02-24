#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common RiceDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Environment Flags
IS_PHONE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Rice-Specific Flags
TARGET_ENABLE_BLUR := true
SUSHI_BOOTANIMATION := 1080
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_OPTOUT_GOOGLE_TELEPHONY := true
TARGET_BUILD_GRAPHENEOS_CAMERA := false
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_EXCLUDES_AUDIOFX := true

# Un|Officialify
RICE_OFFICIAL := false
RICE_MAINTAINER := Your Local GitHub Retard

# GMS
WITH_GMS := true
RICE_PACKAGE_TYPE := Gapps

PRODUCT_NAME := lineage_pdx215
PRODUCT_DEVICE := pdx215
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 1 III

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="XQ-BC52-user 13 61.2.A.0.382 61002A000038200046651803 release-keys"

BUILD_FINGERPRINT := Sony/qssi/qssi:13/TKQ1.220807.001/1:user/release-keys