# Ansible to setup Windows 10 WSL environment
Ansibe role to setup WSL environment on my Windows 10 Machine (Laptop/Desktop)

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
2. To run playbook, use following command
   ```
   ansible-playbook -i localhost, playbook.yml
   ```
3. 


