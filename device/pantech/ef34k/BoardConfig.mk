# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# msm8660-common overrides #

# use this section to override any build flags from msm8660-common
# WARNING: Anything below the -include line will be overridden by 
# BoardConfigCommon.mk in the msm8660-common repo.

USE_CAMERA_STUB := true


# OVERRIDES END #

# inherit from common msm8660
-include device/pantech/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/pantech/ef34k/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := ef34k

# assert
TARGET_OTA_ASSERT_DEVICE := a770k,ef34k,IM-A770K
# kernel
BOARD_KERNEL_CMDLINE        := console=ttyHSL0,115200,n8 androidboot.hardware=qcom loglevel=0
BOARD_KERNEL_BASE           := 0x40200000
BOARD_MKBOOTIMG_ARGS        := --ramdisk_offset 0x41500000
BOARD_KERNEL_PAGESIZE       := 2048

# Kernel [Build]
TARGET_KERNEL_CONFIG := msm8660-perf-EF34K_defconfig
TARGET_KERNEL_SOURCE := /home/kernel/a760s_ics
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_PREBUILT_KERNEL := device/pantech/ef34k/prebuilt/kernel
#BUILD_KERNEL := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef34k/bluetooth/include
BOARD_BLUEDROID_VENDOR_CONF := device/pantech/ef34k/bluetooth/vnd_msm8660.txt


# recovery
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 629145600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_HAS_NO_SELECT_BUTTON := true


# Suppress the WIPE command since it can brick our EMMC
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_VOLD_MAX_PARTITIONS := 19
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# recovery
BOARD_HAS_NO_SELECT_BUTTON     := true
BOARD_HAS_NO_MISC_PARTITION    := true
BOARD_USES_MMCUTILS            := true
BOARD_HAS_LARGE_FILESYSTEM     := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

BOARD_SDCARD_DEVICE_PRIMARY   := /dev/block/mmcblk0p19
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1