## TWRP device tree for T-Mobile and MetroPCS Samsung Galaxy Avant
## afyonltetmo

1) Initialize your local repository using the OMNIROM trees
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-5.1

2) Add `.repo/local_manifests/afyonltetmo.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <remove-project name="build" />
  <project name="greggit1986/Lineage16_msm8226_afyonltecan" path="kernel/samsung/msm8226" remote="github" revision="updtfw01" />
  <project name="greggit1986/android_device_samsung_afyonltetmo" path="device/samsung/afyonltetmo" remote="github" revision="android-5.1" />
  <project name="greggit1986/android_device_generic_goldfish" path="device/generic/goldfish" remote="github" revision="android-5.1" />
  <project name="greggit1986/android_build" path="build" remote="github" revision="android-5.1" >
    <copyfile src="core/root.mk" dest="Makefile" />
  </project>
</manifest>
/*Remove OMNI build and clone mine manually in case of unexpected troubles*/
```

3) Then to sync up:
repo sync

4) To build, run:

. build/envsetup.sh
lunch omni_afyonltetmo-eng
mka recoveryimage

```Copy and paste to the command line if necessary to force flex to use standard locale instead of your locale configuration: 
export LC_ALL=C
