# -*- mode: ruby -*- 
# vi: set ft=ruby :

required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin| 
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config| 
  config.vm.define "deploy" do |deploy| 
    deploy.vm.box = "ubuntu/focal64"
    config.ssh.insert_key = false
    deploy.vm.network :private_network, ip: "192.0.1.10"
    deploy.vm.hostname = "deploy"
    deploy.hostsupdater.aliases = ["deploy"]
    # deploy.vm.provision "shell", path: "provision.sh"
    #deploy.vm.synced_folder "ansible", "/home/ubuntu/ansible"
  end

  config.vm.define "host" do |host|
    host.vm.box = "ubuntu/focal64"
    host.vm.network :private_network, ip: "192.0.1.20"
    config.ssh.insert_key = false
    host.vm.hostname = "host"
    host.hostsupdater.aliases = ["host"]
  #   host.vm.provision "shell", path: "provision.sh"
  #   host.vm.synced_folder "ansible", "/home/ubuntu/ansible"
  end
end

