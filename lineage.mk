# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from max1 device
$(call inherit-product, device/letv/max1/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_max1
PRODUCT_DEVICE := max1
PRODUCT_MANUFACTURER := LeTv
PRODUCT_BRAND := LeTv

PRODUCT_GMS_CLIENTID_BASE := android-max1

TARGET_VENDOR_PRODUCT_NAME := Max1
TARGET_VENDOR_DEVICE_NAME := Max1
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Max1 PRODUCT_NAME=Max1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Max1-user 6.0.1 MMB29M 7 dev-keys"

BUILD_FINGERPRINT := LeTv/Max1/Max1:6.0.1/MMB29M/1447858500:user/release-keys

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := letv
