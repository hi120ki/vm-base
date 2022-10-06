Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.define "ubuntu"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = 8192
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo sed -i.bk -e 's/archive.ubuntu.com/jp.archive.ubuntu.com/g' /etc/apt/sources.list
  SHELL
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "base.yml"
  end
end
