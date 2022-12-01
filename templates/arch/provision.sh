#!/usr/bin/bash

# time
timedatectl set-timezone America/Denver

# update
pacman -Syuq

# guest agents
pacman -Sq qemu-guest-agent spice-vdagent
systemctl start qemu-guest-agent
systemctl start spice-vdagent

# xresize
ln -s /vagrant/xresize/xresize /vagrant/xresize/xresize-loop /usr/local/bin
# ln -s /vagrant/xresize/xresize-loop.desktop /home/vagrant/.config/autostart

