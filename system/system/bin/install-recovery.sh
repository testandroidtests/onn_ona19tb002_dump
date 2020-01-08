#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:16777216:fff1262b55ddacc88310a76f8c953f1195a98b29; then
  applypatch  EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:16777216:884b1d592c0e67d101c54d783f0183c46313c17d EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery fff1262b55ddacc88310a76f8c953f1195a98b29 16777216 884b1d592c0e67d101c54d783f0183c46313c17d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
