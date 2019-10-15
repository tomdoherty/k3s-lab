# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'centos/7'
  config.ssh.insert_key = false
  config.vm.synced_folder '.', '/vagrant', disabled: 'true'
  config.vm.provider :virtualbox do |v|
    #    v.memory = 256
    v.linked_clone = true
  end

  config.vm.define 'k3s-master' do |app|
    app.vm.hostname = 'k3s-master'
    app.vm.network 'private_network', ip: '192.168.33.10'
  end

  config.vm.define 'k3s-node01' do |app|
    app.vm.hostname = 'k3s-node01'
    app.vm.network 'private_network', ip: '192.168.33.11'
  end

  config.vm.define 'k3s-node02' do |app|
    app.vm.hostname = 'k3s-node02'
    app.vm.network 'private_network', ip: '192.168.33.12'
  end

  config.vm.define 'k3s-node03' do |app|
    app.vm.hostname = 'k3s-node03'
    app.vm.network 'private_network', ip: '192.168.33.13'
  end

  #   config.vm.provision 'ansible' do |ansible|
  #     ansible.playbook = 'playbook.yml'
  #     ansible.become = true
  #   end
end
