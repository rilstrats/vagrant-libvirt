#!/usr/bin/bash

# time
timedatectl set-timezone America/Denver

# update
pacman -Syuq --noconfirm # arch
# apt update -yq; apt upgrade -yq # debian
# dnf update -yq # fedora

# guest agents
pacman -Sq --noconfirm qemu-guest-agent spice-vdagent # arch
# apt install -yq qemu-guest-agent spice-vdagent # debian
# dnf install -yq qemu-guest-agent spice-vdagent # fedora
systemctl start qemu-guest-agent # shutdown, reboot
systemctl start spice-vdagent # clipboard, better GUI

# xresize (only needed if using GUI and it doesn't automatically resize)
# ln -s /vagrant/xresize/xresize /vagrant/xresize/xresize-loop /usr/local/bin
# ln -s /vagrant/xresize/xresize-loop.desktop /home/vagrant/.config/autostart

