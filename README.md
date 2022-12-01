# Vagrant Libvirt

Virtualbox and VMware virtual machines are configured perfectly out of the box and I wanted the same experience on my QEMU virtual machine. Enjoy!

## Host Setup

### QEMU/KVM

Follow these two guides from Chris Titus Tech to install Qemu/KVM correctly

- https://christitus.com/vm-setup-in-linux/
- https://christitus.com/setup-qemu-in-archlinux/

### Virt Manager

Open Virt Manager and change these settings:

- Edit > Preferences > Console
  - Graphical Console Scaling: Never
  - Resize guest with window: On

### Vagrant

Install vagrant and dependencies

Fedora:

```bash
sudo dnf install vagrant libvirt libvirt-devel
```

## Usage

You should now be ready to `vagrant up`! If desired, change the RAM, CPU, and VRAM allocations in the vagrantfile. To acccess the GUI use Virt Manager.

username/password = vagrant/vagrant (as per vagrant standards, along with sudo no password)

