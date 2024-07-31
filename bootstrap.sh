#!/bin/bash
sudo apt-get update -y 

sudo apt-get -y install git curl build-essential cmake pkg-config libfontconfig1-dev zsh libfuse2 openfortivpn network-manager-fortisslvpn-gnome flameshot xclip dotnet-sdk-8.0 aspnetcore-runtime-8.0 xournalpp glogg btop kde-full

sudo apt autoremove -y

#Oh my zsh


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

 #Install jetbrains toolbox
 curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash
 
 #pbcopy & pbpaste

 alias pbcopy='xclip -selection clipboard'
 alias pbpaste='xclip -selection clipboard -o'
 
 #Install EF globally
 /usr/lib/dotnet/dotnet tool install --ignore-failed-sources --add-source https://api.nuget.org/v3/index.json --global dotnet-ef

#Install docker via script
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

#Launch docker in system boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

#Nvm, node & npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

ln -s "$(which node)" /usr/local/bin/node
ln -s "$(which npm)" /usr/local/bin/npm
ln -s "$(which npx)" /usr/local/bin/npm

#Add nvm to path
echo "export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >> ~/.zshrc

nvm install --lts

#install sqlcmd
curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list | sudo tee /etc/apt/sources.list.d/mssql-release.list
sudo apt-get update  
sudo apt-get install mssql-tools18

echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.zshrc

source ~/.zshrc


#Python for jmeter with taurus
sudo apt install python3-pip -y
pip install --upgrade wheel setuptools Cython
sudo python3 -m pip install bzt
#Make component (en estibarna) para instalar jmeter (bzt fichero.yml)


#java - sdkman
curl -s "https://get.sdkman.io" | bash
sdk install java 22.0.2-amzn


#Trackpad signature
sudo apt install libglib2.0-bin xinput python3-pip python3-tk
pip3 install fingerpaint


#Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
#In case of broken dependencies run:
#sudo apt --fix-broken install
rm google-chrome-stable_current_amd64.deb




