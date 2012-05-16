vagrant-cfengine
================
These are Vagrantfiles which can be fed to [vagrant](http://vagrantup.com/).
They aim to boostrap 64-bit el6 CentOS quickly with cfengine >=3.3.0 installed on them.[1]
There is a rudimentary drop to a [vagrant shell provisioner](http://vagrantup.com/docs/provisioners/shell.html).[2]
Vagrant baseboxes build with vagrant 1.0.3, veewee 0.2.3, vbox 4.1.14.

#### Quickstart
[install vagrant](http://vagrantup.com/docs/getting-started/index.html)
```mkdir -p ~/Vagrant/cf3
curl -s -o ~/Vagrant/cf3/Vagrantfile https://raw.github.com/filler/vagrant-cfengine/Vagrantfile
cd ~/Vagrant/cf3/
vagrant up cfhub```

#### Using the shell provisioner, local inputs/bundles
```cd ~/Vagrant/cf3/
git clone git@github.com:filler/my-awesome-cf3-code.git masterfiles
vi Vagrantfile # open up vm.share_folder and vm.provision```

[1]: Done with EPEL packages since community binary installers arent readily accessible.
[2]: A proper provisioner would rule.
