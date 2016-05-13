# Some (opiniated) recommended packages for GUI-based Ubuntu distros.
# For both 15.10 and 16.04

# N.b. git is not preinstalled in Ubuntu 16:
sudo apt install git
sudo apt-get install aptitude
sudo apt-get install muon
sudo apt-get install synaptic

# Install important Python packages:
sudo apt-get install python-pip
pip install --upgrade pip
pip install virtualenv

sudo apt-mark hold flashplugin-installer