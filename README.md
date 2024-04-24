# Ansible to setup Windows WSL environment
Ansibe role to setup WSL environment on my Windows Machine (Laptop/Desktop)

## Requirement
* Git
* Ansible 2+

## Installation

First, you need to install Git and Ansible :

```
$ sudo apt-get install git
$ git clone https://github.com/sys0dm1n/ansible-ubuntu-desktop.git
$ cd ansible-ubuntu-desktop
$ bash ./install.sh
```

Run `ansible-playbook ansible-ubuntu-wsl.yml --ask-become-pass` and enter your **sudo** password to run the playbook

```
$ ansible-playbook ansible-ubuntu-wsl.yml --ask-become-pass
```

#######################################################################
1. Bootscrap script to install Ansible
   ```
   chmod +x bootstrap_ansible.sh
   ```
2. To install Pre-Requisites to confure WSL, use following playbook
   ```
   ansible-playbook -i localhost, setup_prerequisites.yml
   ```
3. To install and configure tools and application in WSL, use following playbook
   ```
   ansible-playbook -i localhost, setup_wsl.yml
   ```




