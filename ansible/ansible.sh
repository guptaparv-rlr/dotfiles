#!/usr/bin/env bash

tags="$1"

if [ -z $tags ]; then
  tags="all"
fi

# Install Ansible
if ! [ -x "$(command -v ansible)" ]; then 
    sudo apt -y install ansible
fi

ansible-galaxy collection install -r ~/.dotfiles/ansible/requirements.yml

ansible-playbook -i ~/.dotfiles/ansible/hosts ~/.dotfiles/ansible/playbook.yml --tags $tags