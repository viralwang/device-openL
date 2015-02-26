$(call inherit-product, device/qcom/msm8909/msm8909.mk)

PRODUCT_COPY_FILES := \
    device/qcom/msm8909/audio_policy.conf:system/etc/audio_policy.conf \
    device/qcom/msm8909/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/qcom/msm8909/media/media_codecs_8909.xml:system/etc/media_codecs.xml \
    device/qcom/msm8909/media/media_profiles_8909.xml:system/etc/media_profiles.xml \
    device/qcom/msm8909/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/qcom/msm8909/WCNSS_qcom_wlan_nv.bin:persist/WCNSS_qcom_wlan_nv.bin \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, vendor/zte/openL/openL-vendor-blobs.mk)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.moz.ril.emergency_by_default=true \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
  persist.sys.usb.config=diag,serial_smd,serial_tty,rmnet_bam,mass_storage

PRODUCT_PACKAGES += \

GAIA_DEV_PIXELS_PER_PX := 1.5

PRODUCT_NAME := openL
PRODUCT_DEVICE := openL
PRODUCT_BRAND := qcom
PRODUCT_MANUFACTURER := zte
PRODUCT_MODEL := openL
