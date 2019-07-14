setup:
	ansible-galaxy install geerlingguy.docker -p ./roles/galaxy
	ansible-playbook -i inventories/vagrant/hosts.yml setup.yml --ask-vault-pass

deploy:
	ansible-playbook -i inventories/vagrant/hosts.yml deploy.yml
