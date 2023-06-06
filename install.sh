cfdisk
cryptsetup benchmark
cryptsetup --verbose --type luks1 --cipher serpent-xts-plain64 --key-size 512 --hash whirlpool --iter-time 10000 --use-random --verify-passphrase luksFormat /dev/sda1
cryptsetup open /dev/sda1 ssd
pvcreate /dev/mapper/ssd
vgcreate system /dev/mapper/ssd
lvcreate --contiguous y --size 8G system --name swap
lvcreate --contiguous y --extents +100%FREE system --name root
mkswap -L SWAP /dev/system/swap
mkfs.ext4 -L ROOT /dev/system/root
swapon /dev/system/swap
mount /dev/system/root /mnt
mkdir /mnt/boot
pacstrap -K /mnt base base-devel
pacstrap -K /mnt linux linux-firmware linux-headers
pacstrap -K /mnt dnscrypt-proxy vim networkmanager ufw
genfstab -U /mnt >> /mnt/etc/fstab
mv config.sh /mnt
mv parabola.sh /mnt
mv setup.sh /mnt
arch-chroot /mnt
