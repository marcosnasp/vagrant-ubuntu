#!/usr/bin/env bash

# Atualiza a lista de pacotes e o sistema
sudo apt update && sudo apt upgrade -y

# Configura o idioma para pt_BR
sudo apt install -y locales
sudo locale-gen pt_BR.UTF-8
export LANG=pt_BR.UTF-8
export LANGUAGE=pt_BR.UTF-8

# Define o layout do teclado para ABNT2
sudo loadkeys br-abnt2

# Instala pacotes essenciais
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    git \
    xclip \
    xsel \
    unzip \
    zip

# Instala Docker (seguindo as instruções do repositório oficial)
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Instala Tilix (alternativa ao Terminix, que foi renomeado)
sudo apt install -y tilix

# Instala o SDKMAN (gerenciador de SDKs)
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Instala Java (última versão LTS) via SDKMAN
sdk install java

# Instala Apache Ant
sdk install ant

# Instala Maven
sdk install maven

# Instala Gradle
sdk install gradle
