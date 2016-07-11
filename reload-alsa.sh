#!/bin/sh

pulseaudio --kill
sudo alsa force-reload
pulseaudio --start
