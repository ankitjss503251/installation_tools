#! /bin/bash

# NOTE: you can comment-out the line with ' # ' or for comment multiple lines (' ') and run this script using ' ./this_file_name '.

# updation
sudo apt update

# upgrade 
sudo apt upgrade

# nginx installation

sudo apt-get update
sudo apt-get install nginx
sudo nginx -v
sudo systemctl status nginx
sudo systemctl start nginx


# jenkins installation
sudo apt install openjdk-11-jre
sudo java -version
sudo apt install jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Clear Cache
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches 

# nvm & node & pm2 installation
sudo apt update 
sudo apt install curl
sudo curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
sudo source ~/.bashrc
sudo nvm ls-remote
sudo nvm install 14.17.0
sudo npm install pm2 -g
sudo pm2 list

# yarn installtion
sudo apt update
sudo apt install curl
sudo curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn
sudo yarn --version

# ansible installation
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.8
python --version
python3 -m pip -V
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible
python3 -m pip install --upgrade --user ansible
ansible --version


# Clear Cache
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches

# terraform installation
sudo apt install curl
sudo curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt update
sudo apt-get install terraform

# Docker installation
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker.io
sudo systemctl enable --now docker
sudo systemctl start docker
sudo apt install docker-compose
docker-compose version
sudo wget -O  /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.25.0/docker-compose-Linux-x86_64
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose version

# kubernetes installation
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-get install curl
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get install kubeadm kubelet kubectl
sudo apt-mark hold kubeadm kubelet kubectl
sudo kubeadm version




