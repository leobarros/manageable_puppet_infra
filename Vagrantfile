# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define :ubuntumaster do |config|
    config.vm.hostname = "ubuntumaster.testlabs.com.br"
    config.vm.box_check_update = true
    config.vm.box = "puppetlabs/ubuntu-16.04-64-puppet"
    config.vm.box_url = "https://atlas.hashicorp.com/puppetlabs/boxes/ubuntu-16.04-64-puppet"
    # editar conforme a sua rede
    config.vm.network "private_network", ip: "192.168.60.180"
    #config.vm.network "forwarded_port", guest: 80, host: 8080
    #config.vm.network "forwarded_port", guest: 443, host: 4444
    
    #VM CONFIG
    config.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize [ "modifyvm", :id, "--cpus", "2" ]
      virtualbox.customize [ "modifyvm", :id, "--memory", "4096" ]
      virtualbox.gui = false
    end
    #FIM VM CONFIG
  end

config.vm.define :gitlab do |config|
    config.vm.hostname = "gitlab.testlabs.com.br"
    config.vm.box_check_update = true
    config.vm.box = "puppetlabs/ubuntu-16.04-64-puppet"
    config.vm.box_url = "https://atlas.hashicorp.com/puppetlabs/boxes/ubuntu-16.04-64-puppet"
    # editar conforme a sua rede
    config.vm.network "private_network", ip: "192.168.60.179"
    #config.vm.network "forwarded_port", guest: 80, host: 8080
    #config.vm.network "forwarded_port", guest: 443, host: 4444

    #VM CONFIG
    config.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize [ "modifyvm", :id, "--cpus", "1" ]
      virtualbox.customize [ "modifyvm", :id, "--memory", "1024" ]
      virtualbox.gui = false
    end
    #FIM VM CONFIG
  end

# Caso queira usar o Centos7 para o master
  config.vm.define :centosmaster do |config|
    config.vm.hostname = "centosmaster.testlabs.com.br"
    config.vm.box_check_update = true
    config.vm.box = "puppetlabs/centos-7.2-64-puppet"
    config.vm.box_url = "https://atlas.hashicorp.com/puppetlabs/boxes/centos-7.2-64-puppet"
    # editar conforme a sua rede
    config.vm.network "private_network", ip: "192.168.60.181"
    #config.vm.network "forwarded_port", guest: 80, host: 8081
    #config.vm.network "forwarded_port", guest: 443, host: 4445

  #VM CONFIG
    config.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize [ "modifyvm", :id, "--cpus", "2" ]
      virtualbox.customize [ "modifyvm", :id, "--memory", "2048" ]
      virtualbox.gui = false
    end
    #FIM VM CONFIG  
  end

  # Máquina para testar o puppetserver do centos7
  config.vm.define :centosagent do |config|
    config.vm.hostname = "centosagent.testlabs.com.br"
    config.vm.box_check_update = true
    config.vm.box = "puppetlabs/centos-7.2-64-puppet"
    config.vm.box_url = "https://atlas.hashicorp.com/puppetlabs/boxes/centos-7.2-64-puppet"
    # editar conforme a sua rede
    config.vm.network "private_network", ip: "192.168.60.182"
    #config.vm.network "forwarded_port", guest: 80, host: 8081
    #config.vm.network "forwarded_port", guest: 443, host: 4445

  #VM CONFIG
    config.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize [ "modifyvm", :id, "--cpus", "1" ]
      virtualbox.customize [ "modifyvm", :id, "--memory", "512" ]
      virtualbox.gui = false
    end
    #FIM VM CONFIG
  end

  #PUPPET
  config.vm.provision "puppet" do |puppet|
    puppet.environment_path = "environments"
    puppet.environment = "test"
  end
  #FIM PUPPET
end
