#!/bin/bash

echo -e "\nUpdating packages..."
sudo apt-get update

################# Node #################
# Install Node, NPM, and front-end task runners

# Install NodeJS 7.x
echo -e "\nInstalling NodeJS 7 and NPM..."
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install ExpressJS
echo -e "\nInstalling ExpressJS..."
sudo npm install -g express-generator

# Install Grunt cli:
echo -e "\nInstalling Grunt..."
sudo npm install -g grunt-cli

# Install Gulp cli:
echo -e "\nInstalling Gulp..."
sudo npm install -g gulp-cli

################# Front-end tools #################
# Install Sass/Compass, GraphicsMagick

# N.b. Ruby and Rubygems should already be preinstalled in recent versions of Ubuntu
echo -e "\nUpdating Ruby/Rubygems..."
sudo apt-get -y install --only-upgrade ruby
sudo apt-get -y install --only-upgrade rubygems
echo -e "\nInstalling ruby-dev..."
sudo apt-get install ruby-dev -y

# Install Sass:
echo -e "\nInstalling Sass..."
sudo gem install sass

# Install Compass:
echo -e "\nInstalling Compass..."
sudo apt-get -yqq install gcc
sudo gem install ffi
sudo gem install compass

# Update installed gems:
echo -e "\nUpdating gems..."
sudo gem update

# Install GraphicsMagick:
# GraphicsMagick works well with grunt-responsive-images or Imager.js
echo -e "\nInstalling GraphicsMagick..."
sudo apt-get install graphicsmagick -y

################# Java #################
# Install JDK

# Install Open JDK 8:
echo -e "\nInstalling Open JDK 8..."
sudo apt-get install openjdk-8-jdk -y
