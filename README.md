# GPU-Passthrough-TU104
The GPU that Nvidia RTX2070 Super Passthrough related files.
<br>

`configs/`
```bash
.
├── etc
│   ├── default
│   │   └── grub
│   ├── libvirt
│   │   └── hooks
│   │       ├── kvm.conf
│   │       ├── qemu
│   │       └── qemu.d
│   │           └── Main_OS
│   │               ├── prepare
│   │               │   └── begin
│   │               │       ├── alloc_hugepages.sh
│   │               │       ├── bind_vfio.sh
│   │               │       ├── cpu_mode_performance.sh
│   │               │       └── disable-fb.sh
│   │               └── release
│   │                   └── end
│   │                       ├── dealloc_hugepages.sh
│   │                       ├── cpu_mode_ondemand.sh
│   │                       └── unbind_vfio.sh
│   └── X11
│       └── xorg.conf
├── virsh
│   └── bridged-network.xml
└── VMs
    ├── Main_OS_VARS.fd
    ├── Main_OS.xml
    ├── OVMF_CODE.fd
    └── TU104.rom
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
└── qemu/
```


