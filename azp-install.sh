#!/bin/bash

### AZP Paket Sistemi 5.0
# AZP Offical Site: https://azp-paket-sistemi.github.io
# AZP Offical Depo: https://azp-paket-sistemi.github.io/azp-depo

# © 2021-2023 AZP

# Rənglər
error=$(echo -e "\033[1;31m E: \033[:0m")
process=$(echo -e "\033[1;34m P: \033[:0m")
finished=$(echo -e "\033[1;32m F: \033[:0m")
info=$(echo -e "\033[1;36m I: \033[:0m")


TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=azp-install
cp -r locale/az/LC_MESSAGES/azp-*.mo /usr/share/locale/az/LC_MESSAGES
cp -r locale/tr/LC_MESSAGES/azp-*.mo /usr/share/locale/tr/LC_MESSAGES

# Root yoxlama
if [ $UID -ne 0 ]
then
  echo "$info" $"Command: sudo ./azp-install.sh"
  exit
fi

files="usr/bin/azp*
       usr/share/applications/azp-about.desktop
       usr/share/azp
       usr/share/pixmaps/azp*
       usr/share/locale/*/LC_MESSAGES/azp*.mo"


echo -e """\033[1;34m

   _________________________________
   |              ___________      |
   |       /\    |___  /  __ \     |
   |      /  \      / /| |__) |    |
   |     / /\ \    / / |  ___/     |
   |    / ____ \  / /__| |         |
   |   /_/    \_\/_____|_|         |                               
    \                             /
     -----------------------------

                
           <<  || 5.0 || >>
                -------
"""
sleep 0.5
echo "$process" $"AZP install..."
tar -xf src.tar.gz
for i_f in $files;
do
  echo "$process" $"Copy AZP file"" == ${i_f} >> /${i_f}"
  if ! cp -prf ${i_f} /${i_f} &>/dev/null;
  then
    echo "$error" $"Failed copy files"" == /${i_f}"
    exit 1
  fi
done
xdg-mime install x-azp.xml
xdg-icon-resource install --context mimetypes --size 64 azp.png application/x-azp
xdg-icon-resource install --context mimetypes --size 64 azp.png application/x-src-azp
xdg-icon-resource install --context mimetypes --size 64 azp.png application/x-azp-script
xdg-icon-resource install --context mimetypes --size 64 azp.png application/x-azp-text
update-icon-caches /usr/share/icons/*
azp -add-architecture -auto
echo "$finished" $"AZP install finished"
rm -r /usr/share/locale/*/LC_MESSAGES/azp-install.mo
rm -r usr
