# rilstrats/kali template
Vagrant.configure("2") do |config|
  config.vm.provider :libvirt do |lv|
    lv.cpus = 2
    lv.memory = 4096
    lv.video_vram = 256
    lv.video_type = "virtio"
    lv.graphics_type = "spice"
    lv.channel :type => "spicevmc", :target_name => "com.redhat.spice.0", :target_type => "virtio"
    lv.channel :type => "unix", :target_name => "org.qemu.guest_agent.0", :target_type => "virtio"
  end
end

