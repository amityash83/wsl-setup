#!/bin/bash

###################
# Install ansible #
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA"
    sudo apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install software-properties-common ansible git python-apt -y
else
    echo "Ansible already installed"
fi

#####################################
# Display real installation process #
echo ""
echo "Customize the playbook ansible-wsl.yml to suit your needs, then run ansible with :"
echo "  ansible-playbook ansible-ubuntu-wsl.yml --ask-become-pass"
echo ""

