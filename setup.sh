sudo rm -rf /parabola.sh
sudo rm -rf ~/.bashrc
sudo rm -rf ~/.bash_profile
sudo pacman --needed -Syy git xorg-server xorg-xinit xorg-xrandr neofetch htop btop alacritty dmenu i3lock xcompmgr ranger newsboat alsa-lib alsa-utils moc feh mpv iceweasel hexchat tor tor-hardened-preferences networkmanager-hardened-configs iceweasel-hardened-preferences iceweasel-noscript iceweasel-https-everywhere iceweasel-ublock-origin openssh libxft xf86-video-intel
git clone https://github.com/KillAura7170/dotfiles.git
mv ~/dotfiles/* ~
rm -rf ~/dotfiles
mkdir ~/.ssh
mkdir ~/.suckless
mkdir ~/Downloads
mkdir ~/Music
mkdir ~/PDF
mkdir ~/coding
mkdir ~/usb
mkdir ~/key
git clone https://github.com/KillAura7170/libreboot.git
git clone https://github.com/KillAura7170/dwm.git
mkdir ~/.local
mkdir ~/.local/bin
mv ~/dwm ~/.suckless/
~/.suckless/dwm/smci.sh
git clone https://github.com/KillAura7170/scripts.git
mv ~/scripts ~/.suckless/
cp ~/.suckless/scripts/* ~/.local/bin/
git clone https://github.com/KillAura7170/tor-website.git
mv tor-website ~/coding/website
reboot
