Vagrant.configure('2') do |config|
  config.vm.define :fedora28, primary: true do |fedora28|
    fedora28.vm.box = 'rilstrats/fedora28'
    # begin box creation
    # fedora28.vm.box = 'generic/fedora28'
    # fedora28.ssh.insert_key = false
    # fedora28.vm.provision :shell, path: 'fedora.sh'
    # end box creation
    fedora28.vm.provider :libvirt do |lv|
      lv.cpus = 2
      lv.memory = 4096
      lv.video_vram = 256
    end
  end

  # config.vm.define :ubuntu14 do |ubuntu14|
  #   ubuntu14.vm.box = "DIGITALR00TS/ubuntu1404"
  #   ubuntu14.vm.provision :shell, path: "ubuntu14.sh"
  # end

  config.vm.define :ubuntu18 do |ubuntu18|
    ubuntu18.vm.box = 'generic/ubuntu1804'
    ubuntu18.vm.provision :shell, path: 'ubuntu18.sh'
  end
end
