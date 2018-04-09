# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "syslog1" do |syslog|
    syslog.vm.box = "ol7-salt-masterless"
    syslog.vm.hostname = "syslog1"
    syslog.vm.network "private_network", ip: "192.168.33.30"
    syslog.vm.synced_folder "salt/roots/", "/srv/"

#    syslog.vm.provision "shell", inline: "hostname > /etc/salt/minion_id"

    syslog.vm.provision :salt do |salt|
      salt.masterless = true
      salt.minion_id = "syslog1"
      salt.minion_config = "salt/minion"
      salt.run_highstate = true
      salt.colorize = true
      salt.verbose = true
    end
  end

  config.vm.define "web1" do |web|
    web.vm.box = "ol7-salt-masterless"
    web.vm.hostname = "web1"
    web.vm.network "private_network", ip: "192.168.33.31"
    web.vm.synced_folder "salt/roots/", "/srv/"

    web.vm.provision :salt do |salt|
      salt.masterless = true
      salt.minion_id = "web1"
      salt.minion_config = "salt/minion"
      salt.run_highstate = true
      salt.colorize = true
      salt.verbose = true
    end
  end

  config.vm.define "lb1" do |lb|
    lb.vm.box = "ol7-salt-masterless"
    lb.vm.hostname = "lb1"
    lb.vm.network "private_network", ip: "192.168.33.32"
    lb.vm.synced_folder "salt/roots/", "/srv/"

    lb.vm.provision :salt do |salt|
      salt.masterless = true
      salt.minion_id = "lb1"
      salt.minion_config = "salt/minion"
      salt.run_highstate = true
      salt.colorize = true
      salt.verbose = true
    end
  end

end
