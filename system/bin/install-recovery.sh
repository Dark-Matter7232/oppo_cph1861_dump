#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:42595952:6b5ca99b288ef6aa97b4ffb85672f819db90a024; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:11304560:1dd3cd8824971a62a4f39099f66b475994d06e28 EMMC:/dev/block/platform/bootdevice/by-name/recovery 6b5ca99b288ef6aa97b4ffb85672f819db90a024 42595952 1dd3cd8824971a62a4f39099f66b475994d06e28:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
