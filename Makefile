.PHONY: install
install:
	ansible-playbook -i local, base.yml

.PHONY: ansible
ansible:
	sudo apt update ; sudo apt install -y ansible
