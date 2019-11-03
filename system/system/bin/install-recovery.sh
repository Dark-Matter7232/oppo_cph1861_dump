#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:30483280:bb45e960eb5d7c82f87a5520cf823f5655a785cd; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9780048:9c59da2b489b51cc98b861a2de6271ed273c1e47 EMMC:/dev/block/platform/bootdevice/by-name/recovery bb45e960eb5d7c82f87a5520cf823f5655a785cd 30483280 9c59da2b489b51cc98b861a2de6271ed273c1e47:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
