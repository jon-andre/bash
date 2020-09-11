# Not an automated script. Just the recipe 
# for Mac
hdiutil convert -format UDRW -o *.img *.iso

diskutil list external

diskutil unmountDisk /dev/diskN
# To get feedback from dd, ctrl+t
sudo dd if=/dev/zero of=/dev/rdiskN bs=1m #1M

diskutil mountDisk /dev/diskNs2
diskutil eraseDisk FAT32 NAME GPT /dev/diskN

diskutil unmountDisk /dev/diskN
sudo dd if=*.img of=/dev/rdiskN bs=1m #1M
