#!/usr/bin/bash

# time
echo "Setting Timezone"
timedatectl set-timezone America/Denver

# update
echo "Updating System Packages"
dnf update -yq

# GNOME
echo "Installing GNOME Desktop (Approximately 10-15 Minutes)"
dnf group install -yq "Fedora Workstation"
sleep 5 # might not be necessary, script failed first run
systemctl enable --now gdm

# KDE
# echo "Installing KDE Desktop"
# dnf -yq group install "KDE Plasma Workspaces"
# systemctl enable --now sddm

# GUI
systemctl set-default graphical

# guest agents
echo "Setting Up Guest Agents"
dnf install -yq qemu-guest-agent spice-vdagent
systemctl start qemu-guest-agent # shutdown, reboot
systemctl start spice-vdagentd # clipboard, better GUI

# xresize (only needed if using GUI and it doesn't automatically resize)
# echo "Adding xresize Scripts"
# ln -s /vagrant/xresize/xresize /vagrant/xresize/xresize-loop /usr/local/bin
# ln -s /vagrant/xresize/xresize-loop.desktop /home/vagrant/.config/autostart

