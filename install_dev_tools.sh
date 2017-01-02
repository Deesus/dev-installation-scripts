#!/bin/bash
# Note: assumes npm is installed

# Install Grunt cli:
sudo npm install -g grunt-cli

# Install Gulp cli:
sudo npm install -g gulp-cli

# Install GraphicsMagick:
# GraphicsMagick works well with grunt-responsive-images or Imager.js
sudo apt-get install -qqy graphicsmagick

# Installs Sass/Compass for Ubuntu 15.10
echo -e "\nUpdating packages..."
sudo apt-get update

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

# Install Open JDK 8:
echo -e "\nInstalling Open JDK 8..."
sudo apt-get install openjdk-8-jdk -y

