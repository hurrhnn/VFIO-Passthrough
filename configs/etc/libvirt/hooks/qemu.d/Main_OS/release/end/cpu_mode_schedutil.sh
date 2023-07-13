#!/bin/bash

## Load the config file
source "/etc/libvirt/hooks/kvm.conf"

## Enable CPU governor schedutil mode
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
for file in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do echo "schedutil" > $file; done
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

