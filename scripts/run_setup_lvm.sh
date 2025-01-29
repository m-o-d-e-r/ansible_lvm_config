#!/bin/bash

echo -n "[enter path to private key] > "
read private_key_file

ansible-playbook -i inventory.yaml --private-key=$private_key_file playbooks/setup_lvm.yaml
