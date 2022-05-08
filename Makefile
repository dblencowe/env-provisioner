up:
	ansible-playbook -i ansible/inventories/pantheon/hosts.ini  --extra-vars "storage_qnap_password=${QNAP_PASSWORD}" ansible/playbooks/setup.yml

down:
	ansible-playbook -i ansible/inventories/pantheon/hosts.ini ansible/playbooks/destroy.yml

web-test:
	helm upgrade --install web-test --namespace apps ./web-test