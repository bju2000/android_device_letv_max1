LOCAL_PATH := $(call my-dir)

###################################################################
# Template:
###################################################################
# include $(CLEAR_VARS)
# ^--- This will clear most LOCAL_* vars
# LOCAL_MODULE		:= init.qcom.factory.sh
# ^--- The name of the module. Usually the the file name.
# LOCAL_MODULE_TAGS	:= eng
# ^--- When should this module be configured. Possible values
#      are optional, eng, user, userdebug. If optional is
#      specified, the module will only be copied when declared
#      in PRODUCT_PACKAGES. See here for more info:
#      https://source.android.com/setup/develop/new-device
# LOCAL_MODULE_CLASS	:= EXECUTABLES
# ^--- TODO: document this.
# LOCAL_SRC_FILES		:= vendor/bin/init.qcom.factory.sh
# ^--- Where to find the source file.
# LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
# ^--- Where to put the source file.
# include $(BUILD_PREBUILT)
# ^--- This instructs make to copy the file as a prebuild,
#      without the need of compiling, etc.
###################################################################




# Device init scripts

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.factory.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.qcom.factory.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= fstab.qcom
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= fstab.qcom
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.power.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= vendor/etc/init/hw/init.qcom.power.rc
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.qcom.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.usb.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.qcom.usb.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.recovery.max1.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.recovery.max1.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= ueventd.qcom.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= ueventd.qcom.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Configuration scripts

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.max1.power.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.max1.power.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.tfa.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.tfa.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.bt.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.qcom.bt.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.qcom.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.usb.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.qcom.usb.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.magisk.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.magisk.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.class_main.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.class_main.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.class_core.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.qcom.class_core.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.trace.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.trace.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.syspart_fixup.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.qcom.syspart_fixup.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.mdm.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.mdm.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.usb.configfs.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.usb.configfs.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.usb.x1.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.qcom.usb.x1.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.early_boot.sh
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= vendor/bin/init.qcom.early_boot.sh
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= ueventd.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= ueventd.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.usb.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.usb.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.target.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.target.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.usb.max1.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.qcom.usb.max1.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.letv.common.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.letv.common.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.letv.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.letv.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.zygote64_32.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.zygote64_32.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.zygote32.rc
LOCAL_MODULE_TAGS	:= eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= init.zygote32.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

