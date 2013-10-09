# Copyright (C) 2012 The CyanogenMod Project
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


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    vendror/cm/config/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# EGL config
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/configs/egl.cfg:system/lib/egl/egl.cfg

# Media config
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/pantech/msm8660-common/configs/media_codecs.xml:system/etc/media_codecs.xml

   
# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf


# QCOM Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Omx
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw \
    libOmxQcelp13Enc \
    libOmxEvrcEnc \
    libdashplayer \
    libvideoeditorplayer \
    libvideoeditor_videofilters \
    libvideoeditor_osal \
    libvideoeditor_jni \
    libvideoeditor_core \
    libsrec_jni \
    libqservice \
    libjackpal-androidterm4 \
    libexternal

# Audio
PRODUCT_PACKAGES += \
    audio_policy.conf \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    libaudioutils

# Lights Support
PRODUCT_PACKAGES += \
	lights.msm8660

# GPS
PRODUCT_PACKAGES += \
    gps.msm8660 

# Power
PRODUCT_PACKAGES += \
    power.msm8660

    
# QRNGD
PRODUCT_PACKAGES += \
    qrngd

# App
PRODUCT_PACKAGES += \
    PinyinIME \
    Term.apk \
    VideoEditor \
    VoiceDialer \
    PhaseBeam \
    NoiseField \
    Galaxy4 \
    FileExplorer

# NFC Support
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/pantech/msm8660-common/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/pantech/msm8660-common/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

## HDMI
#PRODUCT_PACKAGES += \
#    hdmid

#AMPLOADER
PRODUCT_PACKAGES += \
    amploader

# Torch
PRODUCT_PACKAGES += \
    Torch

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs
    

# patch for Bluetooth
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/configs/BCM43291A0_003.001.013.0141.0000_Pantech_EF33S_EF34K_extLNA_TestOnly.hcd:system/bin/BCM43291A0_003.001.013.0141.0000_Pantech_EF33S_EF34K_extLNA_TestOnly.hcd

# keylayouts
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/keylayout/8660_handset.kl:system/usr/keylayout/8660_handset.kl\
    device/pantech/msm8660-common/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/pantech/msm8660-common/keylayout/ffa-keypad.kl:system/usr/keylayout/ffa-keypad.kl \
    device/pantech/msm8660-common/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/pantech/msm8660-common/keylayout/qt602240_ts_input.kl:system/usr/keylayout/qt602240_ts_input.kl \
    device/pantech/msm8660-common/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/pantech/msm8660-common/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/pantech/msm8660-common/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/pantech/msm8660-common/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/pantech/msm8660-common/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/pantech/msm8660-common/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/pantech/msm8660-common/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/pantech/msm8660-common/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/pantech/msm8660-common/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/pantech/msm8660-common/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl 

# Keychars
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/pantech/msm8660-common/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/pantech/msm8660-common/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/pantech/msm8660-common/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

# IDC
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/pantech/msm8660-common/idc/cyttsp-i2c.idc:system/usr/idc/cyttsp-i2c.idc \
    device/pantech/msm8660-common/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# Misc init scripts
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/pantech/msm8660-common/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/pantech/msm8660-common/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/pantech/msm8660-common/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    device/pantech/msm8660-common/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/pantech/msm8660-common/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/pantech/msm8660-common/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/pantech/msm8660-common/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/pantech/msm8660-common/etc/init.qcom.thermal_conf.sh:system/etc/init.qcom.thermal_conf.sh

#apn spn gps
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/configs/apns-conf.xml:/system/etc/apns-conf.xml \
    device/pantech/msm8660-common/configs/spn-conf.xml:/system/etc/spn-conf.xml \

# MSM8660 firmware
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/pantech/msm8660-common/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/pantech/msm8660-common/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/pantech/msm8660-common/firmware/cyttsp_8660_ffa.hex:/system/etc/firmware/cyttsp_8660_ffa.hex \
    device/pantech/msm8660-common/firmware/cyttsp_8660_fluid_p2.hex:/system/etc/firmware/cyttsp_8660_fluid_p2.hex \
    device/pantech/msm8660-common/firmware/cyttsp_8660_fluid_p3.hex:/system/etc/firmware/cyttsp_8660_fluid_p3.hex \
    device/pantech/msm8660-common/firmware/dsps_fluid.b00:/system/etc/firmware/dsps_fluid.b00 \
    device/pantech/msm8660-common/firmware/dsps_fluid.b01:/system/etc/firmware/dsps_fluid.b01 \
    device/pantech/msm8660-common/firmware/dsps_fluid.b02:/system/etc/firmware/dsps_fluid.b02 \
    device/pantech/msm8660-common/firmware/dsps_fluid.b03:/system/etc/firmware/dsps_fluid.b03 \
    device/pantech/msm8660-common/firmware/dsps_fluid.mdt:/system/etc/firmware/dsps_fluid.mdt \
    device/pantech/msm8660-common/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/pantech/msm8660-common/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/pantech/msm8660-common/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/pantech/msm8660-common/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/pantech/msm8660-common/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw


# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

#apps
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/preinstall/RootExplorer.apk:/system/app/RootExplorer.apk

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/pantech/msm8660-common/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.composition.type=dyn \
    debug.enabletr=true \
    debug.egl.hw=1 \
    debug.mdpcomp.maxlayer=0 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    ro.opengles.version=131072

