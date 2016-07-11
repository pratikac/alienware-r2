#!/bin/sh

sudo modprobe -r ath10k_pci
sudo service network-manager stop
sudo service networking stop
sleep 5
sudo service networking start
sudo service network-manager start
sudo modprobe -v ath10k_pci
