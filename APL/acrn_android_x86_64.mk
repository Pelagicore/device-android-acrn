# includes the base of Android-x86 platform
$(call inherit-product,device/generic/common/x86_64.mk)

# Overrides
PRODUCT_NAME := acrn_android_x86_64
PRODUCT_BRAND := TPE
PRODUCT_DEVICE := APL
PRODUCT_MODEL := ACRN Android-x86_64
PRODUCT_MANUFACTURER := Luxoft

TARGET_BOARD_PLATFORM := android_x86_64

# Adjust the default services.
#GAPPS_VARIANT := pico
#GAPPS_EXCLUDED_PACKAGES := \
#    PixelLauncher \
#    Chrome \

#GAPPS_FORCE_PACKAGE_OVERRIDES := true
#$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.gralloc=$(TARGET_BOARD_PLATFORM) \
    ro.hardware.hwcomposer=$(TARGET_BOARD_PLATFORM) \

PRODUCT_PACKAGES += \
    gralloc.android_x86_64 \
    hwcomposer.android_x86_64

