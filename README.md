# VM (on Vagrant) setup

```
sudo sed -i.bk -e 's/archive.ubuntu.com/jp.archive.ubuntu.com/g' /etc/apt/sources.list
git clone https://github.com/hi120ki/vm-base.git
sudo apt update ; sudo apt install -y ansible
ansible-playbook -c=local -i local, vm-base/base.yml
```

## Vagrant

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  # vagrant plugin install vagrant-disksize
  config.disksize.size = "40GB"
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = 4096
  end

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo sed -i.bk -e 's/archive.ubuntu.com/jp.archive.ubuntu.com/g' /etc/apt/sources.list
    git clone https://github.com/hi120ki/vm-base.git
    sudo apt update ; sudo apt install -y ansible
    ansible-playbook -c=local -i local, vm-base/base.yml
  SHELL
end
```
