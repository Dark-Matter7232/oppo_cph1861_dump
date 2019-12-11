#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:30483280:a5fc75b00bb2a8005487b1c9c94bd7aeb0fd108c; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9780048:55ecb9741746023719fe3007ed0b4cc96142cf98 EMMC:/dev/block/platform/bootdevice/by-name/recovery a5fc75b00bb2a8005487b1c9c94bd7aeb0fd108c 30483280 55ecb9741746023719fe3007ed0b4cc96142cf98:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
