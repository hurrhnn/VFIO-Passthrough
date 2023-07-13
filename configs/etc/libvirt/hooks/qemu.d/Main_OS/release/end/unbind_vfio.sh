#!/bin/bash

## Load the config file
source "/etc/libvirt/hooks/kvm.conf"

## Unbind gpu from vfio and bind to nvidia
virsh nodedev-reattach $VIRSH_GPU_VIDEO
virsh nodedev-reattach $VIRSH_GPU_AUDIO
virsh nodedev-reattach $VIRSH_GPU_USB
virsh nodedev-reattach $VIRSH_GPU_SERIAL
virsh nodedev-reattach $VIRSH_SATA_SSD

## Unload vfio
modprobe -r vfio_pci
modprobe -r vfio_iommu_type1
modprobe -r vfio
