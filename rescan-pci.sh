#! /bin/sh

# This script rescans the PCI bus after resume from suspend to fix
# broken WiFi, wired ethernet, and the card reader on the Alienware 15 R2.

case $1 in
     resume|thaw)
        echo 1 > /sys/bus/pci/devices/0000\:3b\:00\.0/rescan
        echo 1 > /sys/bus/pci/devices/0000\:3c\:00\.0/rescan
        echo 1 > /sys/bus/pci/devices/0000\:3d\:00\.0/rescan
        echo 1 > /sys/bus/pci/devices/0000\:3e\:00\.0/rescan
        ;;
esac
