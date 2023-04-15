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
# Kernel-prebuilt (comment all if using source)
TARGET_PREBUILT_KERNEL := device/samsung/afyonltetmo/kernel
BOARD_KERNEL_DT := device/samsung/afyonltetmo/dt.img
BOARD_MKBOOTIMG_ARGS += --dt $(BOARD_KERNEL_DT)

# Kernel - From source (comment all if using prebuilt)
#TARGET_KERNEL_ARCH := arm
#TARGET_KERNEL_HEADER_ARCH := arm
#TARGET_KERNEL_SOURCE := kernel/samsung/msm8226
#TARGET_KERNEL_CONFIG := twrp_afyonltetmo_defconfig
#KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-
#BOARD_CUSTOM_BOOTIMG := true
#BOARD_CUSTOM_BOOTIMG_MK :=  $(DEVICE_TREE)/mkbootimg.mk

# Partitions
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12562643968
# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true

BOARD_NEEDS_LZMA_MINIGZIP := true
#BOARD_RAMDISK_USE_XZ := true
LZMA_RAMDISK_TARGETS := recovery #JJADD

# TWRP
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
BOARD_HAS_NO_REAL_SDCARD := true
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_SAMSUNG := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p26"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,errors=panic wait,check,encryptable=footer"
#TW_CRYPTO_FS_FLAGS := "0x00000406"
#TW_CRYPTO_KEY_LOC := "footer"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
# Time services
BOARD_USES_QC_TIME_SERVICES := true

