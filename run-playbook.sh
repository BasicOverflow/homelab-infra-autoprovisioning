#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i inventory/hosts playbooks/provision-main.yaml -e @group-vars/all.yaml "$@"

