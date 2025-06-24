ifeq (,$(filter factory_%,$(TARGET_PRODUCT)))
PRODUCT_PACKAGES += battery_mitigation
endif

PRODUCT_PROPERTY_OVERRIDES += \
       vendor.battery_mitigation.aidl.enable=true

PRODUCT_SOONG_NAMESPACES += device/google/gs-common/battery_mitigation
PRODUCT_PACKAGES += vendor.google.battery_mitigation-default
PRODUCT_PACKAGES += vendor.google.battery_mitigation.service_static
DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += device/google/gs-common/battery_mitigation/compatibility_matrix.xml

BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/battery_mitigation/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += device/google/gs-common/battery_mitigation/sepolicy/system_ext/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += device/google/gs-common/battery_mitigation/sepolicy/system_ext/public
