#!/bin/sh

# Install NodeJS 7.x
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install ExpressJS
sudo npm install -g express-generator
