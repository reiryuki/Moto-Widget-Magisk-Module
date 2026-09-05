# Moto Widget Magisk Module

## DISCLAIMER
- Moto apps are owned by Motorola™.
- The MIT license specified here is for the Magisk Module only, not for Moto apps.

## Descriptions
- Widgets app by Motorola Mobility LLC. ported and integrated as a Magisk Module for all supported and rooted devices with Magisk
- Runs com.motorola.commandcenter.WidgetService in every 60 seconds to keep the background process

## Sources
https://apkmirror.com com.motorola.timeweatherwidget by Motorola Mobility LLC.

## Changelog

v1.15
- Update TimeWeather.apk version 4.13.306 in Minimum SDK 30 variant
- Prepare /storage/emulated/"$UID"/Android/data/$PKG/ directories
- Resets module folders/files permissions at post-fs-data
- Move _uninstall.log to /data/adb/logs/

v1.14
- Update TimeWeather.apk version in Minimum SDK 30 variant
- Add Action button to clear app caches
- Fix bug in uninstall.sh

v1.13
- Remove Moto Launcher
- Update TimeWeather.apk versions
- Fix conflict with modules_update while installing via recovery if Magisk installed
- Fix MagiskHide & SUList

v1.12-R
- Fix fatal exceptions of Moto Launcher in Android 14

v1.12
- Redirect /sdcard to /data/media/"$UID"
- Add optional debug.log=1 for more detailed install log
- Fix MagiskHide & SUList
- Fix wrong method parameters in Moto Launcher

v1.11
- Allow Moto Launcher in Android 13 and up
- Fix permissions
- Fix Moto Launcher bugs and fatal exceptions
- Does not allow recents provider in unsupported ROM
- Universal wallpaper picker
- Abort if Moto Core Magisk module is not installed
- Move uninstall log to /data/media/0/..._uninstall.log

v1.10
- Fix fatal exceptions
- Change module ID and module name
- Remove Moto Launcher in Android 13 and up
- KernelSU support
- Magisk v26.1 support
- Does not allow installation via Recovery
- Save uninstall log at /data/adb/modules/..._uninstall.log
- Fix optional permissive mode
- Set blacklist/whitelist
- Redirect to /vendor/overlay/ if /product/overlay/ is not supported

v1.9
- Runs com.motorola.commandcenter.WidgetService in every 60 seconds to keep the background process

v1.8
- Fix some fatal exceptions
- Update TimeWeather.apk version
- Move dependency files to Moto Core Magisk Module
- This version requires Moto Core Magisk Module in non-Motorola ROM
- Fix permissions
- Fix conflict with built-in Launcher
- Remove Play Store support
- SDK 28 support
- Recovery installation support
- Creates /sdcard/optionals.prop file if doesn't exist
- Using sys.boot_completed=1 detection

v1.7
- Fix permission
- Fix fatal exceptions
- MotorolaSettingsProvider.apk minSDKVersion="23"
- Script enhancements

## Screenshots
https://t.me/ryukinotes/13

## Requirements
- Magisk/KernelSU/APatch/Kitsune Mask installed
- Moto Core Magisk Module installed https://github.com/reiryuki/Moto-Core-Magisk-Module

## Installation Guide & Download Link
- If you are using KernelSU, you need to disable Unmount Modules by Default in KernelSU app settings and install https://github.com/KernelSU-Modules-Repo/meta-overlayfs or https://github.com/KernelSU-Modules-Repo/magic_mount_rs or https://github.com/KernelSU-Modules-Repo/hybrid_mount or https://github.com/maxsteeel/nomount first depending on ROM compatibility
- Install Moto Core Magisk Module first: https://github.com/reiryuki/Moto-Core-Magisk-Module
- Download the right module file according to your Android version:
  - Minimum SDK 30: https://github.com/reiryuki/Moto-Widget-Magisk-Module
  - Minimum SDK 29: https://github.com/reiryuki/Moto-Widget-Magisk-Module
  - Minimum SDK 28: https://github.com/reiryuki/Moto-Widget-Magisk-Module
  - Minimum SDK 26: https://github.com/reiryuki/Moto-Widget-Magisk-Module
- Install the module via Magisk/KernelSU/APatch/Kitsune Mask app or Recovery if Magisk or Kitsune Mask installed
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot afterwards
- Go to app info of Moto Widget and allow the network access
- Change your home screen layout to 5 rows or more
- Add Moto Widget to your home screen
- You can even update Moto Widget app via Play Store if there is an update
- If Moto Widget app does not show up in Play Store, then clear Play Store data first

## Download Tutorial
https://t.me/ryukinotes/97

## Optionals
Global: https://t.me/ryukinotes/35

## Troubleshootings
- https://t.me/ryukinotes/82
- Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- https://t.me/androidryukimodsdiscussions
- https://t.me/androidappsportdevelopment

## Sponsors
https://t.me/ryukinotes/25


