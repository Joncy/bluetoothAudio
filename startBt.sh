#!/bin/bash

# Make the xway discoverable via bt
sudo hciconfig hci0 piscan

# Start bluetooth-agent with pincode specified in btPin file
sudo bluetooth-agent $(cat /home/pi/.bluetoothAudio/btPin) &

# Start pulse-audio module loader script
python /home/pi/.bluetoothAudio/pulseaudio-auto-loopback.py &
