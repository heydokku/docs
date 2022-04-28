- Why is ansible so important?
- Glossaries
- Tutorials
- Examples
- Creating an Ansible Playbook
[Writing playbook](https://www.ansible.com/blog/getting-started-writing-your-first-playbook)
[Cheat sheets](https://www.digitalocean.com/community/cheatsheets/how-to-use-ansible-cheat-sheet-guide)

[ansible-examples](https://galaxy.ansible.com/): 10k

### Why is ansible so important?

1 Connect and control your infrastructure from a central Ansible controller machine,

*With Ansible, we can automate the process.*

Automatically initializing for the fresh server

Ansible is used to manage VM fleets in bulk, making sure that each newly created VM has the same configuration as the others

### Important Playbooks


[Automate your Docker deployments with Ansible](https://www.youtube.com/watch?v=mq7n_0Xs1Kg)
`ansible-galaxy collection install community.docker`

### Glossaries

• One Ansible Control Node: The Ansible control node is the machine we will use to connect to and
control the Ansible hosts over SSH. Your Ansible control node can either be your local machine or a
server dedicated to running Ansible.

• One or more Ansible Hosts: An Ansible host is any machine that your Ansible control node is
configured to automate. This guide assumes your Ansible hosts are remote *Ubuntu 18.04 servers*
       
• The inventory file contains information about the hosts you’ll manage with Ansible.       

• The playbook.yml file is where all tasks from this setup are defined.

`sudo vi /etc/ansible/hosts`

### Tutorials

[How to Install and Configure Ansible on Ubuntu 18.04.](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-18-04)

[Initialize a fresh server with Ansible](https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-automate-initial-server-setup-on-ubuntu-18-04)

[Run the playbook locally](We need backup solution  here): :)) this only need to run to config  the server

[DO Community - Ansible Playbooks](https://github.com/do-community/ansible-playbooks#do-community---ansible-playbooks)

### Problems that Ansible solved

For the purposes of this tutorial, we’ll set up a Raspberry Pi with Ansible, so even if the SD card gets corrupted, we can quickly set it up again and continue working with it.

    Flash image (Raspbian)
    Login with default credentials (pi/raspberry)
    Change default password
    Set up passwordless SSH
    Install packages you want to use


You then tell Ansible to run a playbook on the hosts in the inventory file.

### Basics

- user-friendly domain-specific language so you can define your desired architecture in a declarative way.

- Being push-based means that Ansible *uses SSH* for communicating between the machine that runs Ansible
and the machines the configuration is being applied to.

- The machines we wish to configure using Ansible are called managed *nodes* or Ansible hosts. In Ansible’s terminology, the list of hosts is called an inventory.

- The machine that reads the definition files and runs Ansible to push the configuration to the hosts is called a control node.

### Creating an Ansible Playbook

Ansible calls the list of these tasks “playbooks

NOTE: you should never store passwords in playbooks directly

### Tools

awx

# Can use with

