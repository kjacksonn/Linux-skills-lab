# Partitioning Commands (DO NOT RUN)

## View Disks
```bash
lsblk
fdisk -l
```

## Create Partitions
```bash
sudo fdisk /dev/sdc
```

## Format
```bash
sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
```
