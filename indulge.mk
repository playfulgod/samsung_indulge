#
# Copyright (C) 2011 The Android Open Source Project
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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS := device/samsung/indulge/overlay

PRODUCT_NAME := full_indulge
PRODUCT_BRAND := MetroPCS
PRODUCT_DEVICE := indulge
PRODUCT_MODEL := SCH-R910

# Telephony property for CDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cdma.home.operator.numeric=311660 \
    ro.cdma.home.operator.alpha=MetroPCS \
    ro.telephony.default_network=4

# WiMAX Property setting for checking WiMAX interface
PRODUCT_PROPERTY_OVERRIDES += \
       ro.wimax.interface=uwbr0

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES := \
    device/samsung/indulge/prebuilt/asound.conf:system/etc/asound.conf \
    device/samsung/indulge/prebuilt/vold.fstab:system/etc/vold.fstab \
    device/samsung/indulge/prebuilt/vold.conf:system/etc/vold.conf \
    device/samsung/indulge/prebuilt/asound.conf:system/etc/asound.conf \
    vendor/samsung/indulge/proprietary/R910/lib/egl/egl.cfg:system/lib/egl/egl.cfg

# Keylayout and Keychars
PRODUCT_COPY_FILES += \
     device/samsung/indulge/prebuilt/keylayout/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
     device/samsung/indulge/prebuilt/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
     device/samsung/indulge/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
     device/samsung/indulge/prebuilt/keylayout/melfas-touchkey.kl:system/usr/keylayout/melfas-touchkey.kl \
     device/samsung/indulge/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
     device/samsung/indulge/prebuilt/keychars/sec_jack.kcm.bin:system/usr/keychars/sec_jack.kcm.bin \
     device/samsung/indulge/prebuilt/keychars/melfas-touchkey.kcm.bin:system/usr/keychars/melfas-touchkey.kcm.bin \
     device/samsung/indulge/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
     device/samsung/indulge/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin

# Generated kcm keymaps
PRODUCT_PACKAGES := \
    cypress-touchkey.kcm \
    s3c-keypad.kcm

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# These are the OpenMAX IL configuration files
PRODUCT_COPY_FILES += \
    device/samsung/aries-common/sec_mm/sec_omx/sec_omx_core/secomxregistry:system/etc/secomxregistry \
    device/samsung/indulge/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# These are the OpenMAX IL modules
PRODUCT_PACKAGES += \
    libSEC_OMX_Core.aries \
    libOMX.SEC.AVC.Decoder.aries \
    libOMX.SEC.M4V.Decoder.aries \
    libOMX.SEC.M4V.Encoder.aries \
    libOMX.SEC.AVC.Encoder.aries

# Misc other modules
PRODUCT_PACKAGES += \
    lights.aries \
    overlay.aries \
    sensors.aries

# Libs
PRODUCT_PACKAGES += \
    libcamera \
    libstagefrighthw

# apns config file
PRODUCT_COPY_FILES += \
        device/samsung/indulge/prebuilt/apns-conf.xml:system/etc/apns-conf.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Camera
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/samsung/indulge/proprietary/R910/lib/libcamera.so:system/lib/libcamera.so \
    vendor/samsung/indulge/proprietary/R910/lib/libcamera_client.so:system/lib/libcamera_client.so \
    vendor/samsung/indulge/proprietary/R910/lib/libActionShot.so:system/lib/libActionShot.so \
    vendor/samsung/indulge/proprietary/R910/lib/libCaMotion.so:system/lib/libCaMotion.so \
    vendor/samsung/indulge/proprietary/R910/lib/libcaps.so:system/lib/libcaps.so \
    vendor/samsung/indulge/proprietary/R910/lib/libPanoraMax1.so:system/lib/libPanoraMax1.so \
    vendor/samsung/indulge/proprietary/R910/lib/libPlusMe.so:system/lib/libPlusMe.so \
    vendor/samsung/indulge/proprietary/R910/lib/libarccamera.so:system/lib/libarccamera.so \
    vendor/samsung/indulge/proprietary/R910/lib/libcamerafirmwarejni.so:system/lib/libcamerafirmwarejni.so \
    vendor/samsung/indulge/proprietary/R910/lib/libcameraservice.so:system/lib/libcameraservice.so \
    vendor/samsung/indulge/proprietary/R910/lib/libseccamera.so:system/lib/libseccamera.so \
    vendor/samsung/indulge/proprietary/R910/lib/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \
    vendor/samsung/indulge/proprietary/R910/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv 
 

# WiFi & Bluetooth
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    vendor/samsung/indulge/proprietary/R910/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    vendor/samsung/indulge/proprietary/R910/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
    vendor/samsung/indulge/proprietary/R910/etc/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
    vendor/samsung/indulge/proprietary/R910/etc/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
    vendor/samsung/indulge/proprietary/R910/bin/BCM4329B1_002.002.023.0589.0637.hcd:system/bin/BCM4329B1_002.002.023.0589.0637.hcd 

#GPS
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/lib/libgps.so:system/lib/libgps.so \
    vendor/samsung/indulge/proprietary/R910/lib/libsecgps.so:system/lib/libsecgps.so 

# Display (3D)
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/lib/egl/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
    vendor/samsung/indulge/proprietary/R910/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    vendor/samsung/indulge/proprietary/R910/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    vendor/samsung/indulge/proprietary/R910/lib/egl/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    vendor/samsung/indulge/proprietary/R910/lib/libIMGegl.so:system/lib/libIMGegl.so \
    vendor/samsung/indulge/proprietary/R910/lib/libpvr2d.so:system/lib/libpvr2d.so \
    vendor/samsung/indulge/proprietary/R910/lib/libsrv_init.so:system/lib/libsrv_init.so \
    vendor/samsung/indulge/proprietary/R910/lib/libsrv_um.so:system/lib/libsrv_um.so \
    vendor/samsung/indulge/proprietary/R910/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
    vendor/samsung/indulge/proprietary/R910/lib/libglslcompiler.so:system/lib/libglslcompiler.so \
    vendor/samsung/indulge/proprietary/R910/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
    vendor/samsung/indulge/proprietary/R910/bin/pvrsrvinit:system/bin/pvrsrvinit

# Sensors, Lights etc
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/lib/hw/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so 


# RIL
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/lib/libril.so:system/lib/libril.so \
    vendor/samsung/indulge/proprietary/R910/lib/libsec-ril40-lte.so:system/lib/libsec-ril40-lte.so \
    vendor/samsung/indulge/proprietary/R910/lib/libsec-ril40-cdma.so:system/lib/libsec-ril40-cdma.so \
    vendor/samsung/indulge/proprietary/R910/lib/libsecril-client.so:system/lib/libsecril-client.so

# PPP
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/bin/pppd_runner:system/bin/pppd_runner

#Sensors
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/lib/libsensor_yamaha.so:system/lib/libsensor_yamaha.so \
    vendor/samsung/indulge/proprietary/R910/lib/libsensor_yamaha_test.so:system/lib/libsensor_yamaha_test.so \
    vendor/samsung/indulge/proprietary/R910/lib/libms3c_yamaha.so:system/lib/libms3c_yamaha.so \
    vendor/samsung/indulge/proprietary/R910/bin/sensorserver_yamaha:system/bin/sensorserver_yamaha \
    vendor/samsung/indulge/proprietary/R910/bin/sensorcalibutil_yamaha:system/bin/sensorcalibutil_yamaha \
    vendor/samsung/indulge/proprietary/R910/bin/sensorstatutil_yamaha:system/bin/sensorstatutil_yamaha

# Misc
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/bin/immvibed:system/bin/immvibed \
    vendor/samsung/indulge/proprietary/R910/bin/logwrapper:system/bin/logwrapper \
    vendor/samsung/indulge/proprietary/R910/bin/immvibed:system/bin/immvibed \
    vendor/samsung/indulge/proprietary/R910/bin/killmediaserver:system/bin/killmediaserver \
    vendor/samsung/indulge/proprietary/R910/bin/notified_event:system/bin/notified_event \
    vendor/samsung/indulge/proprietary/R910/bin/mfgloader:system/bin/mfgloader \
    vendor/samsung/indulge/proprietary/R910/bin/netcfg:system/bin/netcfg \
    vendor/samsung/indulge/proprietary/R910/bin/wlservice:system/bin/wlservice \
    vendor/samsung/indulge/proprietary/R910/lib/libnetutils.so:system/lib/libnetutils.so

# LPM charging files.
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/bin/playlpm:system/bin/playlpm \
    vendor/samsung/indulge/proprietary/R910/bin/charging_mode:system/bin/charging_mode \
    vendor/samsung/indulge/proprietary/R910/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so \
    vendor/samsung/indulge/proprietary/R910/media/battery_charging_*.qmg:system/media/battery_charging_*.qmg \
    vendor/samsung/indulge/proprietary/R910/media/chargingwarning.qmg:system/media/chargingwarning.qmg \
    vendor/samsung/indulge/proprietary/R910/media/Disconnected.qmg:system/media/Disconnected.qmg

# Audio
PRODUCT_COPY_FILES += \
    vendor/samsung/indulge/proprietary/R910/lib/libaudio.so:obj/lib/libaudio.so \
    vendor/samsung/indulge/proprietary/R910/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
    vendor/samsung/indulge/proprietary/R910/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so \
    vendor/samsung/indulge/proprietary/R910/lib/libaudio.so:system/lib/libaudio.so \
    vendor/samsung/indulge/proprietary/R910/lib/libaudioflinger.so:system/lib/libaudioflinger.so


# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=eth0 \
       wifi.supplicant_scan_interval=120 \
       dalvik.vm.heapsize=32m

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false
# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Copy product specific files
PRODUCT_COPY_FILES += \
    device/samsung/indulge/prebuilt/init.smdkc110.rc:root/init.smdkc110.rc \

# We are using a prebuilt kernel for now, to ease building. This will be changed later.
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#    LOCAL_KERNEL := device/samsung/indulge/kernel
#else
#    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel


# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary/R910 drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/indulge/indulge-vendor.mk)
