# VM setup

```
git clone https://github.com/hi120ki/vm-setup.git
sudo apt-add-repository -y -u ppa:ansible/ansible ; sudo apt install -y ansible
ansible-playbook -c=local -i local, vm-setup/base.yml
```
