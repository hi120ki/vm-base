.PHONY: install
install:
	ansible-playbook -c=local -i local, base.yml

.PHONY: ansible
ansible:
	sudo apt update ; sudo apt install -y ansible
