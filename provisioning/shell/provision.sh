#!/usr/bin/env bash

<%= import '../vagrant-shell-scripts/ubuntu.sh' %>

apt-mirror-pick 'br'

apt-packages-update

#Ubuntu Desktop GUI
apt-packages-install \
    ubuntu-gnome-desktop

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
    xsel             

# Tilix
apt-packages-ppa 'webupd8team/terminix'
apt-packages-update
apt-packages-install \
    tilix                          

wget -c http://download.springsource.com/release/STS4/4.1.1.RELEASE/dist/e4.10/spring-tool-suite-4-4.1.1.RELEASE-e4.10.0-linux.gtk.x86_64.tar.gz -O SpringToolSuite4.tar.gz
sudo tar -zxvf SpringToolSuite4.tar.gz -C /opt/
echo -e '[Desktop Entry]\nCategories=Development;IDE;Java;\nComment[pt_BR]=Spring Tool Suite 4\nComment=Spring Tool Suite 4\nExec=/opt/sts-4.1.1.RELEASE/SpringToolSuite4\nGenericName[pt_BR]=\nGenericName=\nIcon=/opt/sts-4.1.1.RELEASE/icon.xpm\nMimeType=\nName[pt_BR]=Spring Tool Suite 4\nName=STS4\nPath=/opt/sts-4.1.1.RELEASE\nStartupNotify=true\nStartupWMClass=STS4\nTerminal=false\nTerminalOptions=\nType=Application\nX-DBUS-ServiceName=\nX-DBUS-StartupType=\nX-KDE-SubstituteUID=false\nX-KDE-Username=' | sudo tee ~/.local/share/applications/sts4.desktop