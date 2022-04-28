[source](https://www.the-digital-life.com/virtual-machine-deployment-vagrant/)

[link2](https://ilyaspatel.github.io/2018/01/07/starting-with-virtualbox-vagrant-and-ansible.html)

Sometimes you just want to quickly set up a testing or development environment. Typically, you download the .iso, create your machine, boot, and complete the installation process. If you’re doing that many times, it can really get annoying. Wouldn’t it be cool, to just automate that whole virtual machine deployment? Fortunately, there is such a solution that’s called Vagrant.

I’ve come across Vagrant because I often need to set up virtual machines for making tutorials or development tasks. Let me show you how you can easily do an automated virtual machine deployment.

After the machine is booted and ready we can now connect via SSH to the virtual machine.
```
vagrant ssh
```

If you have made changes to the Vagrantfile, you need to stop and reboot the machine again with this command.

```
vagrant reload
```

If you want to delete a virtual machine, simply type this command. Note that this will delete the virtual disks and the config on your hypervisor, but not the Vagrantfile or the folder.

vagrant destroy
