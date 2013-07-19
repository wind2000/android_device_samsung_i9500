#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/i9500

BOARD_VENDOR := samsung

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal5410
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := exynos5

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200n8 vmalloc=512M androidboot.console=ttySAC2
TARGET_KERNEL_CONFIG := cyanogenmod_i9500_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/exynos5410

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
USE_CAMERA_STUB := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg

# NFC
BOARD_NFC_HAL_SUFFIX := universal5410

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG

# Webkit
ENABLE_WEBGL := true

# Filesystems
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2898264064
BOARD_USERDATAIMAGE_PARTITION_SIZE := 9604956160
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true

# Releasetools
#TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# inherit from the proprietary version
-include vendor/samsung/i9500/BoardConfigVendor.mk