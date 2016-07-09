#!/bin/sh

modprobe -r ath10k_pci
service network-manager stop
sleep 5
service network-manager start
modprobe -v ath10k_pci
