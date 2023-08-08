#!/bin/bash

### AZP Paket Sistemi 5.0
# AZP Offical Site: https://azp-paket-sistemi.github.io
# AZP Offical Depo: https://azp-paket-sistemi.github.io/azp-depo

# © 2021-2023 AZP

# Rənglər
error=$(echo -e "\033[1;31m E: \033[:0m")
process=$(echo -e "\033[1;34m P: \033[:0m")
finished=$(echo -e "\033[1;32m F: \033[:0m")
remove=$(echo -e "\033[1;31m R: \033[:0m")
info=$(echo -e "\033[1;36m I: \033[:0m")

TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=azp-remove

# Root yoxlama
if [ $UID -ne 0 ]
then
  echo "$info" $"Command: sudo ./azp-remove.sh"
  exit
fi

files="/usr/bin/azp*
       /usr/share/applications/azp-about.desktop
       /usr/share/azp
       /usr/share/pixmaps/azp*.png
       /usr/share/locale/*/LC_MESSAGES/azp*.mo"

echo "$info" $"Program data folders will not be deleted when uninstalling azp"
sleep 1
echo "$remove" $"AZP remove..."
for r_f in $files;
do
  echo "$remove" $"Remove AZP file"" == ${r_f}"
  if ! rm -r ${r_f} &>/dev/null;
  then
    echo "$error" $"Failed remove files"" == ${r_f}" &>/dev/stderr
    exit 1
  fi
done
rm -r /etc/azp
rm -r /var/cache/azp-archives
rm -r /var/cache/azp/azp-depo /var/cache/azp/azp-architecture
xdg-mime uninstall /usr/share/mime/packages/x-azp.xml
echo "$finished" $"AZP remove finished"
