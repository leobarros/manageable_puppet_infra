# Manageable Puppet Infra
Gerenciando a infraestrutura com Puppet
Ambiente para acompanhar o curso sobre Puppet em:
https://www.udemy.com/manageable-puppet-infrastructure/
Autor: Ger Apeldoorn

# Sistema Operacional da máquina virtual
  A minha escolha é o Centos7, mas você também pode usar o Ubuntu 16.04.

# Iniciando o Vangrant
  Na pasta onde está o VagrantFile execute:
  vagrant up centosmaster para iniciar uma VM com o CentOS
  
  Caso você goste do Ubuntu
  vagrant up ubuntumaster para iniciar uma VM com o Ubuntu
  
  Obs: Não é necessário levantar as duas máquinas. Escolha uma de seu agrado.

  Para testar o agente foi criado uma máquina virtual chamada centosagent:
  vagrant up centosagent

# Repositório

## Instalação no Red Hat/CentOS7
   sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

## Instalação no Ubuntu 16.04
   wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
   sudo dpkg -i puppetlabs-release-pc1-xenial.deb
   sudo apt update

## Instalação do Puppet/PuppetServer
   - Ubuntu: sudo apt-get install puppet puppetserver
   - CentOS7 - yum install puppet puppetserver

   Fonte: https://docs.puppet.com/puppet/latest/puppet_collections.html

## Configuração do puppet da máquina virtual
  Existe o arquivo de configuração puppet.conf para o puppet master.
  Já para o agente o arquivo está na pasta agente.
  Basta colocar em /etc/puppetlabs/puppet/ em cada máquina virtual

# GitLab
  - Ubuntu 16.04 (https://about.gitlab.com/downloads/#ubuntu1604)
  - CentOS7 - (https://about.gitlab.com/downloads/#centos7)

# Instalando os modulos
  Os modulos estão na pasta environments/test/modules e para instala-los
  devemos fazer o seguinte:

  puppet module install nome_do_modulo
  ou
  puppet module install nome_do_modulo --modulepath=${PWD}/modules
