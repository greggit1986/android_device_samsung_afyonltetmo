MALLOC_IMPL := dlmalloc

DEVICE_TREE := device/samsung/afyonltetmo

# Platform
TARGET_BOARD_PLATFORM := msm8226

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK :=  $(DEVICE_TREE)/mkbootimg.mk

# Kernel-prebuilt
TARGET_PREBUILT_KERNEL := device/samsung/afyonltetmo/kernel
BOARD_KERNEL_DT := device/samsung/afyonltetmo/dt.img
BOARD_MKBOOTIMG_ARGS += --dt $(BOARD_KERNEL_DT)

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 721420288
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2569011200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12631588352

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true

# Image compression
BOARD_NEEDS_LZMA_MINIGZIP := true
#BOARD_RAMDISK_USE_XZ := true
LZMA_RAMDISK_TARGETS := recovery

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_ROOT_EXTRA_FOLDERS := efs firmware firmware-modem persist
BOARD_ROOT_EXTRA_SYMLINKS := \
    /data/tombstones:/tombstones

# TWRP
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_SAMSUNG := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p26"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,errors=panic wait,check,encryptable=footer"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# BRIGHTNESS CONTROL
TW_DEFAULT_BRIGHTNESS := 167
TW_MAX_BRIGHTNESS := 255

# BUILD FLAGS
export LC_ALL := C

# ADB LOGCAT SUPPORT-still not functional, drop for now
#TARGET_USES_LOGD:= true
#TARGET_EVENT_LOGGIND:= false
#TW_INCLUDE_LOGCAT := true
#TARGET_RECOVERY_DEVICE_MODULES += debuggerd
#TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT_EXECUTABLES)/debuggerd

# Removes the 'Reboot bootloader' button
TW_NO_REBOOT_BOOTLOADER := true
# Removes the 'Reboot recovery' button
TW_NO_REBOOT_RECOVERY := true
# Disable the battery percentage for devices where it doesn't work properly
#TW_NO_BATT_PERCENT := true
# Same as above, for CPU Temperature
#TW_NO_CPU_TEMP := true

# Remove MTP support
#TW_USE_TOOLBOX := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

