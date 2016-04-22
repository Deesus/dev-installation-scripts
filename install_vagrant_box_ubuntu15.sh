#!/bin/sh

# This script is a fix/workaround for Ubuntu 15.x
# - Enables adding vagrant box
# - Adds "precise64" box
# this script is for you if you recieved an error like this when attempting `Vagrant up`:
# "error setting certificate verify locations: CAfile: /etc/pki/tls/certs/ca-bundle.crt CApath: none"

sudo apt-get -y install ca-certificates
sudo mkdir /etc/pki/tls && sudo mkdir /etc/pki/tls/certs
sudo cp /etc/ssl/certs/ca-certificates.crt /etc/pki/tls/certs/ca-bundle.crt
sudo chmod 755 /etc/pki/tls/certs
vagrant init precise64 http://files.vagrantup.com/precise64.box
echo "precise64 box added!"
