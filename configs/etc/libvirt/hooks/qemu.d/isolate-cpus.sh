#!/bin/bash

# Cores reserved for the host machine
# Must include QEMU IO/Emulation cores if configured
# Ex: 1st Core -> reserved=0
# Ex: 1st & 2nt Cores -> reserved=0,1
# Ex: 1st Physical Core (16 Virtual Cores) -> reserved=0,8
reserved=0

# Host core range numbered from 0 to core count - 1
# You must put all the cores of your host CPU
# Cores not in $cores_for_host are for Guests
# Ex: 8 Cores  -> cores=0-7
# Ex: 16 Cores -> cores=0-15
cores=0-7

# See Arch wiki for more informations https://wiki.archlinux.org/title/PCI_passthrough_via_OVMF#Isolating_pinned_CPUs

command=$2
valid_cmds='prepare,start,started,stopped,release,migrate,restore'

if [[ $command == "started" ]]; then
  echo "Hook/Qemu : isolate-cpus.sh : Isolate CPUS"
  systemctl set-property --runtime -- system.slice AllowedCPUs=$reserved
  systemctl set-property --runtime -- user.slice AllowedCPUs=$reserved
  systemctl set-property --runtime -- init.slice AllowedCPUs=$reserved
elif [[ $command == "release" ]]; then
  echo "Hook/Qemu : isolate-cpus.sh : Allow all CPUS"
  systemctl set-property --runtime -- system.slice AllowedCPUs=$cores
  systemctl set-property --runtime -- user.slice AllowedCPUs=$cores
  systemctl set-property --runtime -- init.slice AllowedCPUs=$cores
elif [[ $valid_cmds =~ $command ]]; then
  echo "Hook/Qemu : isolate-cpus.sh : Supported command but do nothing"
else
  echo "Invalid commands. Ex: ./script vm_name [prepare|start|started|stopped|release|migrate|restore]" >&2
  exit 1
fi
