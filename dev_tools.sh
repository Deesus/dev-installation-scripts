#!/bin/bash

echo "\nUpdating packages..."
sudo apt-get update

################# Node #################
# Install Node, NPM, and front-end task runners

# Install NodeJS 7.x
echo "\nInstalling NodeJS 7 and NPM..."
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install nodejs -yq

# Install ExpressJS
echo "\nInstalling ExpressJS..."
sudo npm install -g express-generator

# Install Grunt cli:
echo "\nInstalling Grunt..."
sudo npm install -g grunt-cli

# Install Gulp cli:
echo "\nInstalling Gulp..."
sudo npm install -g gulp-cli

################# Front-end tools #################
# Install Sass/Compass, GraphicsMagick

# N.b. Ruby and Rubygems may already be preinstalled in modern Debian/Ubuntu versions:
echo "\nUpdating Ruby/Rubygems..."
sudo apt-get -y install --only-upgrade ruby
sudo apt-get -y install --only-upgrade rubygems
echo "\nInstalling ruby-dev..."
sudo apt-get install ruby-dev -yq

# Install Sass:
echo "\nInstalling Sass..."
sudo gem install sass

# Install Compass:
echo "\nInstalling Compass..."
sudo apt-get install gcc -yqq 
sudo gem install ffi
sudo gem install compass

# Update installed gems:
echo "\nUpdating gems..."
sudo gem update

# Install GraphicsMagick:
echo "\nInstalling GraphicsMagick..."
sudo apt-get install graphicsmagick -yq	# GraphicsMagick works well with grunt/gulp or Imager.js

################# Java #################

# Install Open JDK 8:
echo "\nInstalling Open JDK 8..."
sudo apt-get install openjdk-8-jdk -yq

################# Python #################

# Install Python Dev Packages:
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
