# Inherit AOSP device configuration for kumquat.
$(call inherit-product, device/sony/kumquat/full_kumquat.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_kumquat
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := kumquat
PRODUCT_MODEL := Xperia U
PRODUCT_MANUFACTURER := Sony
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST25i_1262-1120 BUILD_FINGERPRINT=SEMC/ST25i_1262-1120/ST25i:4.0.4/6.1.1.B.1.10/9bt3zw:user/release-keys PRIVATE_BUILD_DESC="ST25i-user 4.0.4 6.1.1.B.1.10 9bt3zw test-keys"

# Extra kumquat overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/kumquat
# Add the Torch app
PRODUCT_PACKAGES += Torch


# Release name and versioning
PRODUCT_RELEASE_NAME := XperiaU-ST25i
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy kumquat specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
