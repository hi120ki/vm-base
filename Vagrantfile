Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  config.vm.synced_folder ".", "/vagrant", SharedFoldersEnableSymlinksCreate: false

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = 8192
  end

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end

#   config.vm.provision "shell", privileged: false, inline: <<-SHELL
#     sudo apt-add-repository -y -u ppa:ansible/ansible ; sudo apt install -y ansible
#     ansible-playbook -c=local -i local, /vagrant/test.yml
#   SHELL

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "test.yml"
  end
end
