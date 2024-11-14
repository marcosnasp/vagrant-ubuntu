# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Definir o box para Ubuntu 22.04 LTS (Jammy)
  config.vm.box = "ubuntu/jammy64"

  # Configurações do VirtualBox
  config.vm.provider "virtualbox" do |v|
    v.name = "Ubuntu_22.04_LTS"
    v.memory = 8192
    v.cpus = 8
  end

  # Configuração de rede
  config.vm.network :private_network, ip: "192.168.111.222"

  # Sincronização de pastas
  config.vm.synced_folder "./shared_folder", "/shared_folder"

  # Provisionamento com o script de shell
  config.vm.provision :shell, path: "provisioning/shell/provision.sh"

  # Desabilitar inserção de chave SSH automática (opcional)
  config.ssh.insert_key = false
end
