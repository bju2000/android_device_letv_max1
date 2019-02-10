LOCAL_PATH := $(call my-dir)


######################################################################################
# Description of variables used to declare a prebuilt module
#
# include $(CLEAR_VARS)
# ^--- This will clear all vars so they can be declared again.
# LOCAL_MODULE        := init.rc
# ^--- An unique name for the module being declared.
# LOCAL_MODULE_TAGS    := optional eng
# ^--- In what types of builds this module will be installed. It can be set to
#      eng (default), user, userdebug or optional (default when LOCAL_MODULE_TAGS
#      is not specified). Setting to optional means the module will be created only
#      if specified in PRODUCT_PACKAGES somewhere (usually device.mk). See more at
#      "https://source.android.com/setup/develop/new-device".
# LOCAL_MODULE_CLASS    := ETC
# ^--- Defines the class of the module. Basically where the module will be put after finished.
#      It can be ETC, EXECUTABLES, SHARED_LIBRARIES, STATIC_LIBRARIES, APPS and maybe more. More
#      info here: https://books.google.co.uk/books?id=bOrUDQAAQBAJ&lpg=PA78&ots=cXOygIhfd8&dq=%22local_module_class%22%20static_libraries%20etc%20apps%20executables&pg=PA78#v=onepage&q=%22local_module_class%22%20static_libraries%20etc%20apps%20executables&f=false
# LOCAL_SRC_FILES        := init.rc
# ^--- This specifies the source file(s) to be used. Separated by spaces.
# LOCAL_MODULE_PATH    := $(TARGET_ROOT_OUT)
# ^--- Where to put module. $(TARGET_ROOT_OUT) means to put it on root (/).
# include $(BUILD_PREBUILT)
# ^--- Finalizes the prebuilt declaration.
######################################################################################

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.usb.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.recovery.usb.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.goldfish.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.goldfish.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Configuration scripts

include $(CLEAR_VARS)
LOCAL_MODULE       := permissive.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES    := sbin/permissive.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := install-recovery.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES    := sbin/install-recovery.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := hcidump.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/hcidump.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := hsic.control.bt.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/hsic.control.bt.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.ath3k.bt.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.ath3k.bt.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.crda.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.crda.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.audio.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.audio.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.bt.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.bt.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.coex.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.coex.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.debug.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.debug.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.dload_quit.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.dload_quit.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.dloadsetup.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.dloadsetup.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.efs.sync.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.efs.sync.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.fm.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.fm.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.post_boot.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.post_boot.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.sdio.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.sdio.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.uicc.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.uicc.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.wifi.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.wifi.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.zram.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.zram.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := letv.start_sys.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/letv.start_sys.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := letv.stop_sys.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/letv.stop_sys.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := qca6234-service.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/qca6234-service.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := usf_post_boot.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/usf_post_boot.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := usf_settings.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/usf_settings.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

