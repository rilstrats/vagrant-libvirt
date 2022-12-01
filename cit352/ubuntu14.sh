#!/bin/bash

# time
echo "Setting Timezone"
timedatectl set-timezone America/Denver

# update
echo "Updating System Packages"
apt update -yqq; apt upgrade -yqq

# guest agents
echo "Setting Up Guest Agents"
apt install -yqq qemu-guest-agent spice-vdagent
service qemu-guest-agent start # shutdown, reboot
service spice-vdagent start # clipboard, better GUI

# xresize (only needed if using GUI and it doesn't automatically resize)
# ln -s /vagrant/xresize/xresize /vagrant/xresize/xresize-loop /usr/local/bin
# ln -s /vagrant/xresize/xresize-loop.desktop /home/vagrant/.config/autostart

