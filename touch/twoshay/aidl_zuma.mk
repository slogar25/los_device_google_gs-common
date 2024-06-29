ifneq ($(wildcard vendor/google_devices/*/vintf/adevtool_manifest_vendor.xml),)
else
DEVICE_MANIFEST_FILE += device/google/gs-common/touch/twoshay/aidl/manifest_zuma.xml
endif
DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += device/google/gs-common/touch/twoshay/aidl/compatibility_matrix_zuma.xml
