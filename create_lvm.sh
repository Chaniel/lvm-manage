pvcreate /dev/sdb /dev/sdc
vgcreate linuxcast /dev/sdb /dev/sdc
lvcreate -n mylv -L 1G linuxcast
mkfs.ext4 /dev/linuxcast/mylv
mkdir -p /mnt/mylv
mount /dev/linuxcast/mylv /mnt/mylv

if [ $? -eq 0 ];then
    echo "commands success"
fi
