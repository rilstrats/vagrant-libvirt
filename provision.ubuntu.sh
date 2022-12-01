#!/usr/bin/bash

# time
timedatectl set-timezone America/Denver

# update
apt update -yq; apt upgrade -yq

# guest agents
apt install -yq qemu-guest-agent spice-vdagent
systemctl start qemu-guest-agent # shutdown, reboot
systemctl start spice-vdagent # clipboard, better GUI

# xresize (only needed if using GUI and it doesn't automatically resize)
# ln -s /vagrant/xresize/xresize /vagrant/xresize/xresize-loop /usr/local/bin
# ln -s /vagrant/xresize/xresize-loop.desktop /home/vagrant/.config/autostart

