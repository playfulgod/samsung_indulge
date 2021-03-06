# Copyright (C) 2009 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the proprietary version
#-include vendor/samsung/indulge/BoardConfigVendor.mk

TARGET_IS_GALAXYS := true
BOARD_USES_NEXUS_S_LIBS := true
BOARD_USES_NEXUS_S_AUDIO := true
BOARD_USES_OVERLAY := true
BOARD_USES_COPYBIT := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/s3c-usbgadget/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/s3c-usbgadget/gadget/lun"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_USES_BML_OVER_MTD := false

DEFAULT_FB_NUM := 0
BUILD_PV_VIDEO_ENCODERS := 1
BOARD_V4L2_DEVICE := /dev/video1
BOARD_CAMERA_DEVICE := /dev/video0

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := indulge910

TARGET_BOARD := SCH-R910
TARGET_BOARD_PLATFORM := s5pc110
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX540_120

# ARMv7-A Cortex-A8 architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
ARCH_ARM_HAVE_TLS_REGISTER := true
ANDROID_ARM_LINKER := true

# Set Audio related defines below.
BOARD_USES_GENERIC_AUDIO := false

# The GL userspace driver is partially broken, so we set this to get a functional UI.
BOARD_NO_RGBX_8888 := true

# We need to use the old sensors libraries, as they were changed in Gingerbread.
TARGET_USES_OLD_LIBSENSORS_HAL := true

# WiFi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt dhd_watchdog_ms=10 dhd_poll=1"
WIFI_DRIVER_APS_FIRMWARE_NAME := "/system/etc/wifi/bcm4329_aps.bin"
WIFI_DRIVER_STA_FIRMWARE_NAME := "/system/etc/wifi/bcm4329_sta.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
BOARD_WEXT_NO_COMBO_SCAN := true

#USB tethering
RNDIS_DEVICE := "/sys/devices/virtual/sec/switch/tethering"

# Bluetooth related defines
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_BLUETOOTH := true
BT_USE_BTL_IF := true
BT_ALT_STACK := true
BRCM_BTL_INCLUDE_A2DP := true
BRCM_BT_USE_BTL_IF := true
WITH_A2DP := true

USE_YAMAHA_SENSORS := true
BOARD_USES_HGL := true
BOARD_EGL_CFG := vendor/samsung/indulge/proprietary/R910/lib/egl/egl.cfg

# Device related defines

TARGET_PREBUILT_KERNEL := device/samsung/indulge/kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x02e00000

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_FFORMAT := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_USES_BMLUTILS := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000

# custom boot and recovery bml locations other than bml 7 & 8
BOARD_BML_BOOT := /dev/block/bml8
BOARD_BML_RECOVERY := /dev/block/bml9

BOARD_RECOVERY_HANDLES_MOUNT := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libsecgps libgps
