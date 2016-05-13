#!/bin/sh
# Installs Sass/Compass for Ubuntu 15.10
echo "Updating packages..."
sudo apt-get -yqq update

# N.b. Ruby and Rubygems should already be preinstalled in recent versions of Ubuntu
echo "Updating Ruby/Rubygems..."
sudo apt-get -yqq install --only-upgrade ruby
sudo apt-get -yqq install --only-upgrade rubygems
echo "Installing ruby-dev..."
sudo apt-get install ruby-dev -q

# Install Sass:
echo "Installing Sass..."
sudo gem install sass -q

# Install Compass:
echo "Installing Compass..."
sudo apt-get -yqq install gcc
sudo gem install ffi -q
sudo gem install compass -q
sudo gem update -q
