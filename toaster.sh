#!/bin/bash -i
sudo apt-get update
sudo apt-get install xrdp xfce4
# let xrdp use XFCE4
echo “xfce4-session” > ~/.xsession
sudo apt-get install docker.io make
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo adduser $1
sudo usermod -aG sudo $1
sudo usermod -aG docker $1
#chrome
sudo apt install gdebi-core
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb
sudo timedatectl set-timezone America/Toronto
