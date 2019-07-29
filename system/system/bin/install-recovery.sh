#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:30481232:79e34d6d210b3975fb6d070c3cea5ac27c9d5465; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9778000:7fa498b5967ac6d53aa7498a03d62168705c90a4 EMMC:/dev/block/platform/bootdevice/by-name/recovery 79e34d6d210b3975fb6d070c3cea5ac27c9d5465 30481232 7fa498b5967ac6d53aa7498a03d62168705c90a4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
