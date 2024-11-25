   sudo fdisk /dev/sdc
   sudo mkswap /dev/sdc1
   sudo swapon /dev/sdc1
   sudo fdisk /dev/sdc
   sudo pvcreate /dev/sdc2
   sudo pvcreate /dev/sdc3 /dev/sdc5 /dev/sdc6
   sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
   sudo lvcreate -L 2040M vgAdmin -n lvAdmin
   sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
   sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
   sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
   sudo lvcreate -L 1G vgDevelopers -n lvTesters
   sudo lvcreate -L 1016M vgDevelopers -n lvDevops
   sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
   sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
   sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
   sudo mkdir /mnt/lvAdmin
   sudo mkdir /mnt/lvDevelopers
   sudo mkdir /mnt/lvTesters
   sudo mkdir /mnt/lvDevops
