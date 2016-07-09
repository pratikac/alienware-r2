#! /bin/sh

# This script rescans the PCI bus after resume from suspend to fix
# broken WiFi, wired ethernet, and the card reader on the Alienware 15 R2.

case $1 in
     resume|thaw)
        echo 1 > /sys/bus/pci/devices/0000\:00\:1c.4/rescan
 echo 1 > /sys/bus/pci/devices/0000\:00\:1c.5/rescan
 echo 1 > /sys/bus/pci/devices/0000\:00\:1c.6/rescan
        ;;
esac