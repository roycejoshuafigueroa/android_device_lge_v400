$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/v400/v400-vendor.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/v400/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    device/lge/v400/prebuilt/etc/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml

# Configs
PRODUCT_COPY_FILES += \
    device/lge/v400/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/v400/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    kernel/lge/msm8226/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/lge/msm8226/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    kernel/lge/msm8226/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/v400/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/lge/v400/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/lge/v400/prebuilt/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/lge/v400/prebuilt/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/lge/v400/prebuilt/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/lge/v400/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/v400/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/v400/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/v400/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/v400/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/v400/prebuilt/etc/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf \
    device/lge/v400/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
    device/lge/v400/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/v400/prebuilt/etc/init.zetaw.fm.sh:system/etc/init.zetaw.fm.sh \
    device/lge/v400/prebuilt/etc/init.zetaw.ssr.wifi.sh:system/etc/init.zetaw.ssr.wifi.sh \
    device/lge/v400/prebuilt/etc/init.zetaw.wifi.sh:system/etc/init.zetaw.wifi.sh \
    device/lge/v400/prebuilt/etc/init.crda.sh:system/etc/init.crda.sh \
    device/lge/v400/prebuilt/etc/init.zetaw.post_boot.sh:system/etc/init.zetaw.post_boot.sh \
    device/lge/v400/prebuilt/etc/sap.conf:system/etc/sap.conf \
    device/lge/v400/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/lge/v400/prebuilt/etc/msap.conf:system/etc/msap.conf \
    device/lge/v400/prebuilt/etc/clatd.conf:system/etc/clatd.conf \
    device/lge/v400/prebuilt/etc/sec_config:system/etc/sec_config \
    device/lge/v400/prebuilt/etc/izat.conf:system/etc/izat.conf \
    device/lge/v400/prebuilt/etc/boot_fixup:system/etc/boot_fixup \
    device/lge/v400/prebuilt/etc/nfc-nci.conf:system/etc/nfc-nci.conf \
    device/lge/v400/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    device/lge/v400/prebuilt/etc/quipc.conf:system/etc/quipc.conf \

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/v400/rootdir/fstab.e7wifi:root/fstab.e7wifi \
    device/lge/v400/rootdir/init.class_main.sh:root/init.class_main.sh \
    device/lge/v400/rootdir/init.lge.early.rc:root/init.lge.early.rc \
    device/lge/v400/rootdir/init.lge.rc:root/init.lge.rc \
    device/lge/v400/rootdir/init.mdm.sh:root/init.mdm.sh \
    device/lge/v400/rootdir/init.usb.rc:root/init.usb.rc \
    device/lge/v400/rootdir/init.e7wifi.rc:root/init.e7wifi.rc \
    device/lge/v400/rootdir/init.e7wifi.usb.rc:root/init.e7wifi.usb.rc \
    device/lge/v400/rootdir/init.e7wifi_product.rc:root/init.e7wifi_product.rc \
    device/lge/v400/rootdir/init.zetaw.bt_vendor.rc:root/init.zetaw.bt_vendor.rc \
    device/lge/v400/rootdir/init.zetaw.class_core.sh:root/init.zetaw.class_core.sh \
    device/lge/v400/rootdir/init.zetaw.cmm.usb.sh:root/init.zetaw.cmm.usb.sh \
    device/lge/v400/rootdir/init.zetaw.early_boot.sh:root/init.zetaw.early_boot.sh \
    device/lge/v400/rootdir/init.zetaw.factory.sh:root/init.zetaw.factory.sh \
    device/lge/v400/rootdir/init.zetaw.rc:root/init.zetaw.rc \
    device/lge/v400/rootdir/init.zetaw.ril.sh:root/init.zetaw.ril.sh \
    device/lge/v400/rootdir/init.zetaw.sh:root/init.zetaw.sh \
    device/lge/v400/rootdir/init.zetaw.ssr.sh:root/init.zetaw.ssr.sh \
    device/lge/v400/rootdir/init.zetaw.syspart_fixup.sh:root/init.zetaw.syspart_fixup.sh \
    device/lge/v400/rootdir/init.zetaw.usb.rc:root/init.zetaw.usb.rc \
    device/lge/v400/rootdir/init.zetaw.usb.sh:root/init.zetaw.usb.sh \
    device/lge/v400/rootdir/ueventd.e7wifi.rc:root/ueventd.e7wifi.rc \


# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm8226 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libaudioparameter \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \
    libalsa-intf \
    libaudio-resampler \
    libaudioutils \
    aplay \
    amix \
    arec \
    alsaucm_test

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    tcpdump \
    Torch

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Crda
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni

# Wifi
PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf \
    libwcnss_qmi \

# Charger
PRODUCT_PACKAGES += charger charger_res_images

# QRNGD
PRODUCT_PACKAGES += qrngd

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc


# GPS
PRODUCT_PACKAGES += \
    gps.msm8226

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8226\
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    keystore.msm8226 \
    lights.msm8226 \
    memtrack.msm8226 \
    power.msm8226

# QRNG
PRODUCT_PACKAGES += qrngp

# Utilities
PRODUCT_PACKAGES += \
    charge_only_mode \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    wcnss_service

# EGL config
PRODUCT_COPY_FILES += \
    device/lge/v400/prebuilt/egl.cfg:system/lib/egl/egl.cfg

# Opengles version 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.sf.hw=1 \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0 \
    debug.enabletr=0

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libdashplayer \
    qcmediaplayer

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

#wifi
PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf \
    libnetcmdiface

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    ro.qc.sdk.audio.ssr=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.hfp.ver=1.6 \
    ro.qualcomm.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bluetooth.request.master=true \
    ro.bluetooth.remote.autoconnect=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=true \
    qcom.hw.aac.encoder=true \
    af.resampler.quality=255 \
    persist.audio.lowlatency.rec=false

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.qc.sub.rstrtlvl=3 \
    persist.sys.qc.sub.rdump.on=1 \
    persist.sys.qc.sub.rdump.max=20 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    ro.audio.fm_max_volume=4096 \
    ro.qualcomm.cabl=0 \
    use.voice.path.for.pcm.voip=true \
    qcom.bt.le_dev_pwr_class=1 \
    ro.qc.sdk.audio.ssr=false \
    persist.audio.fluence.voicecall=false \
    persist.audio.fluence.voicerec=false \
    ro.qc.sdk.audio.fluencetype=none \
    persist.audio.fluence.speaker=false \
    use.voice.path.for.pcm.voip=true \
    use.dedicated.device.for.voip=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    av.offload.enable=false \
    av.streaming.offload.enable=false \
    audio.offload.pcm.enable=false \
    mm.enable.smoothstreaming=true \
    qcom.hw.aac.encoder=true \
    persist.audio.calfile0=/etc/ACDB/Bluetooth_cal.acdb \
    persist.audio.calfile1=/etc/ACDB/General_cal.acdb \
    persist.audio.calfile2=/etc/ACDB/Global_cal.acdb \
    persist.audio.calfile3=/etc/ACDB/Handset_cal.acdb \
    persist.audio.calfile4=/etc/ACDB/Hdmi_cal.acdb \
    persist.audio.calfile5=/etc/ACDB/Headset_cal.acdb \
    persist.audio.calfile6=/etc/ACDB/Speaker_cal.acdb

# QC time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Enable KSM by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ksm.default=1

#Softkeys
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_LOCALES := en_US
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_NAME := full_v400
PRODUCT_DEVICE := v400
