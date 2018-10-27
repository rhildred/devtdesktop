sudo apt-get update
sudo apt-get install xrdp mate-core mate-desktop-environment mate-notification-daemon #x windows
# let xrdp use MATE
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
sudo apt-get install docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
adduser $1
usermod -aG sudo $1
usermod -aG docker $1
#chrome
sudo apt install gdebi-core
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb
