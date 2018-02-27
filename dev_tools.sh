#!/bin/bash

echo "\nUpdating packages..."
sudo apt-get update

################# NodeJS #################

# Install NodeJS and npm:
echo "\nInstalling NodeJS and npm..."
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs -y

################# Front-end tools #################

# Install Webpack-CLI (from npm):
echo "\nInstalling webpack-cli..."
sudo npm install -g webpack-cli -D --save

# Install LESS (from npm):
echo "\nInstalling LESS..."
sudo npm install less -g

# Install Vue.js (from npm):
echo "\nInstalling Vue.js..."
sudo npm install vue-cli -g

# Install GraphicsMagick:
echo "\nInstalling GraphicsMagick..."
sudo apt-get install graphicsmagick -yq	# GraphicsMagick works well with grunt/gulp or Imager.js

################# Java #################
# N.b. Open JDK already part of Kubuntu, others; so don't install
# TODO: delete altogether?

# Install Open JDK 8:
#echo "\nInstalling Open JDK 8..."
#sudo apt-get install openjdk-8-jdk -yq

################# Python #################

# Install Python Dev Packages:
echo "\nInstalling python-apt..."
sudo apt-get install python-apt

echo "\nInstalling Python Dev..."
sudo apt-get install python-dev -yq	# for Python 2
sudo apt-get install python3-dev -yq	# for Python 3

# Install important Python packages:
echo "\nInstalling important Python packages..."
sudo apt-get install python3-venv -yq	# venv for Debian/Ubuntu

sudo apt-get install python3-tk -yq	# tkinter for Python 3
sudo apt-get install python-tk -yq	# tkinter for Python 2

sudo apt-get install python-pip -yq		# pip for Python 2
pip install --upgrade pip

sudo apt-get install python3-setuptools -y	# pip for Python 3
sudo easy_install3 pip

pip install conda


################# Misc. #################

echo "\nInstalling Git..."
sudo apt install git -yq
