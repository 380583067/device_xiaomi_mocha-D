# Inherit device configuration for mocha.
$(call inherit-product, device/xiaomi/mocha/full_mocha.mk)

# Inherit from those products. Most specific first.
#$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
#$(call inherit-product, frameworks/native/build/phone-xhdpi-20484096-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/xiaomi/mocha/mocha-vendor.mk)
$(call inherit-product-if-exists, vendor/xiaomi/mocha/consolemode-blobs.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/dot/config/common.mk)


TARGET_GAPPS_ARCH := arm
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := dot_mocha
PRODUCT_DEVICE := mocha
PRODUCT_BAND := xiaomi
PRODUCT_MANUFACTURER := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Xiaomi/carbon_mocha/mocha:5.1.1/LMY49J/7fd38a3d2b:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


  
