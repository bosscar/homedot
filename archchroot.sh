sudo systemctl enable iwd dhcpcd
ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US ISO-8859-1" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
export LANG=en_US.UTF-8
echo madras > /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 madras" >> /etc/hosts
echo "passwd for root"
passwd
useradd -m -G wheel bosscar
passwd bosscar
sudo nvim /etc/sudoers

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
sudo nvim /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
exit
