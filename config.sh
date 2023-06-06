ln -sf /usr/share/zoneinfo/COUNTRY/CITY /etc/localtime
hwclock --systohc
vim /etc/locale.gen
locale-gen
vim /etc/hostname
vim /etc/hosts
vim /etc/mkinitcpio.conf
mkinitcpio -p linux
vim /etc/NetworkManager/NetworkManager.conf
vim /etc/dnscrypt-proxy/dnscrypt-proxy.toml
vim /etc/dnscrypt-proxy/blocked-names.txt
systemctl disable systemd-resolved
systemctl enable NetworkManager dnscrypt-proxy ufw
useradd -mG wheel  killaura
passwd
passwd killaura
EDITOR=vim
visudo
exit
