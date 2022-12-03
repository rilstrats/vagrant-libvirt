Vagrant.configure("2") do |config|
  config.vm.define :arch, primary: true do |arch|
    arch.vm.box = "generic/arch" # change to desired vagrant box
    arch.vm.provision :shell, path: "provision.sh"
    arch.vm.provider :libvirt do |lv|
      lv.cpus = 2
      lv.memory = 4096
      lv.video_vram = 256
    end
  end

  # config.vm.define :debian do |debian|
  #   debian.vm.box = "generic/debian11"
  # end

  # config.vm.define :fedora do |fedora|
  #   fedora.vm.box = "generic/fedora37"
  # end

  # config.vm.define :windows do |windows|
  #   windows.vm.box = "generic/windows11"
  #   windows.vm.guest = :windows
  #   windows.vm.communicator = "winrm"
  #   windows.vm.provider :libvirt do |lv|
  #     lv.cpus = 2
  #     lv.memory = 4096
  #     lv.video_vram = 256
  #   end
  # end

end

