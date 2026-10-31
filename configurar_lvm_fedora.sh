#!/bin/bash

# SCRIPT PARA CONFIGURAR LVM EN FEDORA

sudo fdisk /dev/sde <<EOF
n
p
1

+3G
t
8e
n
p
2

+1G
t
2
82
w
EOF

sudo fdisk /dev/sdd <<EOF
n
p
1


t
8e
w
EOF


# 2. LIMPIEZA DE FIRMAS (WIPEFS)

sudo wipefs -a /dev/sdd1 /dev/sde1 /dev/sde2


# 3. CONFIGURACIÓN DE VG_DATOS 

sudo pvcreate /dev/sde1
sudo vgcreate vg_datos /dev/sde1

sudo lvcreate -L 2.5G vg_datos -n lv_workareas
sudo lvcreate -L 10M vg_datos -n lv_docker


# 4. CONFIGURACIÓN DE VG_TEMP Y SWAP 

sudo pvcreate /dev/sdd1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 2.5G vg_temp -n lv_swap


# 5. FORMATEO Y ACTIVACIÓN DE SISTEMAS DE ARCHIVOS

sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker

sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap

sudo mkswap /dev/sde2
sudo swapon /dev/sde2

# 6. CREACIÓN DE DIRECTORIOS, PERSISTENCIA Y MONTAJE

sudo mkdir -p /var/lib/docker/
sudo mkdir -p /work/

echo "/dev/mapper/vg_datos-lv_docker /var/lib/docker/ ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_datos-lv_workareas /work/ ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_temp-lv_swap none swap sw 0 0" | sudo tee -a /etc/fstab
echo "/dev/sde2 none swap sw 0 0" | sudo tee -a /etc/fstab

sudo mount -a
