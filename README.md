### Hardware Setup

- CPU:
    - Intel(R) Core(TM) i7-9700KF
- Motherboard:
    - MSI MPG Z390 GAMING EDGE AC
- GPUs:
    - NVIDIA RTX 2070 SUPER
    - NVIDIA GTX 1060 3GB
- Memory:
    - Samsung DDR4 PC4-19200 2400MHz 64GB (4x16)
- Disk:
    - SK Hynix Gold P31 SSD 512GB - M.2 NVMe (host)
    - Intel Corporation Cannon Lake PCH SATA AHCI Controller - SATA (guest)


### Software Setup

- OS: Fedora release 38 (Thirty Eight) x86_64
- qemu-system-x86_64: QEMU emulator version 7.2.1 (qemu-7.2.1-2.fc38)
- libvirtd: libvirtd (libvirt) 9.0.0
- virt-manager: 4.1.0


### Structures

`configs/`
```bash
.
├── VMs
│   ├── Main_OS_VARS.fd
│   ├── OVMF_CODE.fd
│   └── TU104.rom
└── etc
    ├── X11
    │   └── xorg.conf
    ├── default
    │   └── grub
    ├── dracut.conf.d
    │   ├── compress.conf
    │   ├── nvme.conf
    │   └── vfio.conf
    ├── libvirt
    │   ├── hooks
    │   │   ├── kvm.conf
    │   │   ├── qemu
    │   │   └── qemu.d
    │   │       ├── Main_OS
    │   │       │   ├── prepare
    │   │       │   │   └── begin
    │   │       │   │       ├── alloc_hugepages.sh
    │   │       │   │       ├── bind_vfio.sh
    │   │       │   │       ├── cpu_mode_performance.sh
    │   │       │   │       └── disable-fb.sh
    │   │       │   └── release
    │   │       │       └── end
    │   │       │           ├── cpu_mode_schedutil.sh
    │   │       │           ├── dealloc_hugepages.sh
    │   │       │           └── unbind_vfio.sh
    │   │       └── isolate-cpus.sh
    │   └── qemu
    │       ├── Main_OS.xml
    │       └── networks
    │           ├── bridged-network.xml
    │           └── defaults.xml
    └── qemu
        └── bridge.conf
```
<br>

`programs/`
```bash
.
├── looking-glass-host-B5-312-132d0e3c.zip
├── MSI_util_v3.zip
└── README
```
<br>

`scripts/`
```bash
.
├── check_microarchitecture.sh
└── iommu.sh
```
<br>

`sources/`
```bash
.
├── linux-tkg-actions/
├── LookingGlass/
```


