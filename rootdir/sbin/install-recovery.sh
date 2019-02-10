#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:22435116:4ca0b9b2f5536824daa190a162cc8282d9d81719; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:18773288:dd68b500af30e08c52ae20f3591595c6c2864f49 EMMC:/dev/block/bootdevice/by-name/recovery 4ca0b9b2f5536824daa190a162cc8282d9d81719 22435116 dd68b500af30e08c52ae20f3591595c6c2864f49:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
