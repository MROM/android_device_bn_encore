#!/sbin/sh

mount /dev/block/mmcblk0p7 /cache

mkdir /rom
mount /dev/block/mmcblk0p2 /rom
echo -n -e "\x00\x00\x00\x00" > /rom/devconf/BootCnt 
echo -n -e "\x00\x00\x00\x00" > /rom/bcb
umount /rom
rmdir /rom

