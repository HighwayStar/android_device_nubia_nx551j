#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8953-common
-include device/nubia/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/nubia/nx551j

# Asserts
TARGET_OTA_ASSERT_DEVICE := nx551j,NX551J

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth


# Kernel
TARGET_KERNEL_CONFIG := lineageos_nx551j_defconfig

# Lineage Hardware
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(DEVICE_PATH)/lineagehw|**/*.java

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/soc/78b7000.i2c/i2c-3/3-005d/wakeup_gesture"

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# inherit from the proprietary version
-include vendor/nubia/nx551j/BoardConfigVendor.mk
