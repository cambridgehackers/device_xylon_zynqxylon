# Copyright (C) 2012 The Android Open Source Project
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

$(call inherit-product, build/target/product/generic_no_telephony.mk)

PRODUCT_PACKAGES += gralloc.xylon hwcomposer.default
## PRODUCT_PACKAGES += busybox

PRODUCT_NAME := zynqxylon
TARGET_BOOTLOADER_BOARD_NAME := xylon
TARGET_BOARD_PLATFORM := xylon

PRODUCT_DEVICE := zynqxylon
PRODUCT_BRAND := Android
PRODUCT_MODEL := Mini for zynq zedxylon with OpenGLES

# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/generic/armv7-a-neon/overlay
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_COPY_FILES += \
	device/xylon/zynqxylon/init.xilinxzynqplatform.rc:root/init.xilinxzynqplatform.rc \
	device/xylon/zynqxylon/ueventd.xilinxzynqplatform.rc:root/ueventd.xilinxzynqplatform.rc \
	device/xylon/zynqxylon/libGLES_xylon.so:system/lib/egl/libGLES_xylon.so \
	device/xylon/zynqxylon/egl.cfg:system/lib/egl/egl.cfg
