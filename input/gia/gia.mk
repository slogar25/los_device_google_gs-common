# When not AOSP target
ifeq (,$(filter aosp_%, $(TARGET_PRODUCT)))
	BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/input/gia/sepolicy

	PRODUCT_PACKAGES += gia
	PRODUCT_PACKAGES += com.google.input.gia.giaservicemanager

	DEVICE_MANIFEST_FILE += device/google/gs-common/input/gia/aidl/manifest.xml
	DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += device/google/gs-common/input/gia/aidl/compatibility_matrix.xml
endif
