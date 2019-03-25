#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:18976768:e36f57b141a9ee2d406ce58594a941197e809a29; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16777216:0945cac77776327f273aac18710ae199ab875720 EMMC:/dev/block/bootdevice/by-name/recovery e36f57b141a9ee2d406ce58594a941197e809a29 18976768 0945cac77776327f273aac18710ae199ab875720:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
