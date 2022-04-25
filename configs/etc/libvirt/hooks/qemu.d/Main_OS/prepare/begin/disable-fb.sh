#!/usr/bin/env bash

# 1. Download and install the QEMU hook helper from here: https://github.com/PassthroughPOST/VFIO-Tools
# 2. Place this file in /etc/libvirt/hooks/qemu.d/NAME OF YOUR VM/prepare/begin/disable-fb.sh
# 3. Make disable-fb.sh executable.

VM_NAME="$1"
if [ -f "/sys/bus/platform/devices/efi-framebuffer.0/driver/unbind" ]; then
	echo "libvirt-qemu disable-fb: Disabling efi-framebuffer to prepare to pass GPU to VM $VM_NAME" > /dev/kmsg 2>&1
	echo "efi-framebuffer.0" > /sys/bus/platform/devices/efi-framebuffer.0/driver/unbind
fi
