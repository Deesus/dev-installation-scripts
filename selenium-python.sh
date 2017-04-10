#!/bin/bash

# The following script sets up Selenium's webdriver (for Python)

# ------------------------------
# define variables:
# ------------------------------

USER_NAME=$(whoami)
DOWNLOAD_DIR="/home/$USER_NAME/Downloads"
GECKO_DRIVER_SRC_URI="https://github.com/mozilla/geckodriver/releases/download/v0.15.0/geckodriver-v0.15.0-linux64.tar.gz"
CHROME_DRIVER_SRC_URI="https://chromedriver.storage.googleapis.com/2.29/chromedriver_linux64.zip"
INSTALL_DIR="/usr/bin"

# ------------------------------
# main:
# ------------------------------

# install Python packages:
apt-get install python3-dev -yq
apt-get install python3-venv -yq
apt-get install python-pip -yq
pip install --upgrade pip
pip install selenium -yp

# download and extract webdrivers:
wget -O ${DOWNLOAD_DIR}/geckodriver.tar.gz $GECKO_DRIVER_SRC_URI
wget -O ${DOWNLOAD_DIR}/chromedriver.zip $CHROME_DRIVER_SRC_URI

tar -xzf ${DOWNLOAD_DIR}/geckodriver.tar.gz
unzip ${DOWNLOAD_DIR}/chromedriver.zip

mkdir $INSTALL_DIR
mv ${DOWNLOAD_DIR}geckodriver $INSTALL_DIR
mv ${DOWNLOAD_DIR}chromedriver $INSTALL_DIR

