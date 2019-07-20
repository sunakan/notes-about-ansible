setup:
	ansible-galaxy install geerlingguy.docker -p ./roles/galaxy
	ansible-playbook -i inventories/vagrant/hosts.yml setup.yml --ask-vault-pass

deploy-master:
	ansible-playbook -i inventories/vagrant/hosts.yml -l master deploy.yml
deploy-replica-1:
	ansible-playbook -i inventories/vagrant/hosts.yml -l replica-1 deploy.yml
deploy-replica-2:
	ansible-playbook -i inventories/vagrant/hosts.yml -l replica-2 deploy.yml

jinja2:
	ansible-playbook -i inventories/vagrant/hosts.yml jinja2-test.yml
