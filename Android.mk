#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 TeamWin Recovery Project
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),P661N)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
include $(CLEAR_VARS)
