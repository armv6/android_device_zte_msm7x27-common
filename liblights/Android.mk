LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := lights.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

LOCAL_SHARED_LIBRARIES := liblog

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),skate)
LOCAL_MODULE := lights.skate
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
else ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),blade)
LOCAL_MODULE := lights.blade
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
else ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),blade2)
LOCAL_MODULE := lights.blade2
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
endif
