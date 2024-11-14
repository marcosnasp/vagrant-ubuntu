#!/usr/bin/env bash

<%= import '../vagrant-shell-scripts/ubuntu.sh' %>

apt-mirror-pick 'br'

apt-packages-update

#Ubuntu Desktop GUI
#apt-packages-install \
#    ubuntu-gnome-desktop

apt-packages-install \
    locales-all

export LANG=pt_BR.UTF-8
export LANGUAGE=pt_BR.UTF-8

sudo loadkeys br

#Docker
apt-packages-install    \
    apt-transport-https \
    ca-certificates     \
    curl                \
    gnupg-agent          \
    software-properties-common  

# Git
apt-packages-install \
    git              \
    xclip            \
    xsel             \
    unzip            \
    zip   

# Tilix
apt-packages-ppa 'webupd8team/terminix'
apt-packages-update
apt-packages-install \
    tilix             

# Sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# java
sdk install java

# apache ant
sdk install ant

# maven
sdk install maven

#gradle
sdk install gradle
