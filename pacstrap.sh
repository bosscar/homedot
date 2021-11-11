pacstrap /mnt base base-devel linux linux-firmware git neovim tmux fish htop neofetch grub efibootmgr iwd dhcpcd ntfs-3g nvidia xorg-server xorg-xinit xorg-xrandr xorg-xrdb picom libxft libxinerama alsa pulseaudio pulseaudio-alsa mpv ttf-font-awesome ttf-fira-code pasystray wget xclip xsel tldr python-pip entr cronie ncdu nvtop youtube-dl feh scrot bleachbit ranger links p7zip ttf-droid broot termdown rofi arc-gtk-theme arc-icon-theme pacman-contrib os-prober thunar
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
