sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="acpi_backlight=vendor"/g' /etc/default/grub
sudo update-grub
sudo cp 10-nvidia.conf /usr/share/X11/xorg.conf.d
sudo sed -i '$a\blacklist nouveau' /etc/modprobe.d/blacklist.conf
sudo sed -i '$a\blacklist ideapad_laptop' /etc/modprobe.d/blacklist.conf

sudo update-initramfs -u
echo"/**************reboot please!!!***************/"

