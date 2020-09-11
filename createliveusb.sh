hdiutil convert -format UDRW -o *.img *.iso

diskutil list external

diskutil unmountDisk /dev/diskN
sudo dd if=/dev/zero of=/dev/rdiskN bs=1m #1M

diskutil mountDisk /dev/disk1s2
diskutil eraseDisk FAT32 NAME GPT /dev/diskN

diskutil unmountDisk /dev/diskN
sudo dd if=*.img of=/dev/rdiskN bs=1m #1M
