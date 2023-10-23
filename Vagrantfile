Vagrant.configure("2") do |config|
  config.vm.box = "debian/buster64"
  config.vm.network "private_network", type: "dhcp"

  config.vm.define "debian" do |debian|
    debian.vm.hostname = "debian-host"
    debian.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "docker_installation.yml"
    ansible.inventory_path = "hosts"
  end
end
