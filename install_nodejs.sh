#!/bin/sh

# Solution by Anthony Akentiev:
wget https://npmjs.org/install.sh
chmod +x install.sh
sudo ./install.sh


# Solution by David Walsh:
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
