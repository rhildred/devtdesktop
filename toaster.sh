#!/bin/bash -i
sudo apt-get update
sudo apt-get install xrdp mate-core mate-desktop-environment mate-notification-daemon #x windows
# let xrdp use MATE
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
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
#nvm
sudo apt-get install build-essential checkinstall libssl-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
bash -c "source ~/.nvm/nvm.sh ; nvm install node"
