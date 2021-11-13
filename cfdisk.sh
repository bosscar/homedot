wipefs /dev/nvme0n1p1
wipefs /dev/nvme0n1p2
wipefs /dev/nvme0n1p3
wipefs /dev/nvme0n1p4

mkfs.ext4 -L ROOT /dev/nvme0n1p2
mkfs.ext4 -L HOME /dev/nvme0n1p3
mkfs.ext4 -L OTHERS /dev/nvme0n1p4
mkfs.fat -F32 /dev/nvme0n1p1
fatlabel /dev/nvme0n1p1 BOOT

mount /dev/nvme0n1p2 /mnt
mkdir -p /mnt/{boot,home,others,media/edrive}
mount /dev/nvme0n1p1 /mnt/boot
mount /dev/nvme0n1p3 /mnt/home
mount /dev/nvme0n1p4 /mnt/others
mount /dev/sda1 /mnt/media/edrive

