## TWRP device tree for T-Mobile and MetroPCS Samsung Galaxy Avant
## afyonltetmo

Add `.repo/local_manifests/afyonltetmo.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="greggit1986/Lineage16_msm8226_afyonltecan" path="kernel/samsung/msm8226" remote="github" revision="updtfw01" />
  <project name="greggit1986/android_device_samsung_afyonltetmo" path="device/samsung/afyonltetmo" remote="github" revision="android-5.1" />
  <project name="greggit1986/android_device_generic_goldfish" path="device/generic/goldfish" remote="github" revision="android-5.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_afyonltetmo
mka recoveryimage
```
```Copy and paste to the command line if necessary to fix locale and missing dependencies  errors: 
export LC_ALL=C
export ALLOW_MISSING_DEPENDENCIES=true
