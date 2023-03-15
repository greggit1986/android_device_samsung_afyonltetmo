## TWRP device tree for T-Mobile and MetroPCS Samsung Galaxy Avant
## afyonltetmo

Add `.repo/local_manifests/afyonltetmo.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="TeamWin/android_kernel_samsung_msm8226" path="kernel/samsung/msm8226" remote="github" revision="android-7.1" />
  <project name="Lixkote/android_device_samsung_afyonltetmo" path="device/samsung/afyonltetmo" remote="github" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_afyonltetmo
mka recoveryimage
```

