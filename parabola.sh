#! /bin/bash

sudo ufw enable
sudo rm -rf /config.sh
user=$(whoami)
sudo mv /setup.sh /home/$user
sudo chown killaura setup.sh
sudo vim /etc/resolv.conf
sudo vim /etc/pacman.conf
sudo nmcli d wifi connect BSSID password PASSWORD
sudo pacman -U https://parabola.nu/packages/libre/x86_64/parabola-keyring/download/
sudo pacman -U https://parabola.nu/packages/libre/x86_64/pacman-mirrorlist/download/
sudo rm /etc/pacman.d/mirrorlist
sudo mv /etc/pacman.d/mirrorlist.pacnew /etc/pacman.d/mirrorlist
sudo rm /etc/pacman.d/mirrorlist.pacnew
sudo vim /etc/pacman.d/mirrorlist
sudo vim /etc/pacman.conf
sudo pacman -Scc
sudo pacman -Syyuu your-freedom your-privacy pacman
sudo reboot
