#!/bin/bash
# Installs Sass/Compass for Ubuntu 15.10
echo "Updating packages..."
sudo apt-get update -yqq

# N.b. Ruby and Rubygems should already be preinstalled in recent versions of Ubuntu
echo "Updating Ruby/Rubygems..."
sudo apt-get install --only-upgrade ruby -yqq
sudo apt-get install --only-upgrade rubygems -yqq

# Install Sass:
echo "Installing Sass..."
sudo gem install sass -yqq

# Install Compass:
echo "Installing Compass..."
sudo apt-get install gcc -yqq
sudo gem install ffi -yqq
sudo gem install compass -yqq
sudo gem update -yqq
