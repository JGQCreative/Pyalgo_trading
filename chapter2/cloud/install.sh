#!/bin/bash

# script to install
# linux system tools, python and jupyter lab

# general linux
apt-get update # update the list of available packages
apt-get upgrade # upgrade all installed packages   

# install system tools
apt-get install -y build-essential git # system tools
apt-get install -y htop screen vim wget curl # system tools
apt-get upgrade -y bash # upgrades bash if necessary
apt-get clean # cleans up the apt-get cache

# installing minoconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh # downloads miniconda
bash miniconda.sh -b # installs miniconda
rm -rf miniconda.sh # removes miniconda installer

# prepends the new path to the current session
export PATH="/root/miniconda3/bin:$PATH" # adds miniconda to path
# prepends the new path in the shell configuration 
cat >> ~/.profile <<EOF
export PATH="/root/miniconda3/bin:$PATH"
EOF

# install python packages
conda update conda # updates conda
conda install -y jupyter jupyterlab numpy pytables pandas scipy matplotlib seaborn scikit-learn # installs data science packages
conda install -y quandl openpyxl xlrd xlwt pyyaml

pip install --upgrade pip  # upgrades pip
pip install q # logging and dubbuging
pip install plotly # interactive D3.js plots
pip install cufflinks # combining plotly with pandas 
pip install tensorflow # machine learning deep learning library 
pip install karas # deep learning lib
pip install eikon # Thomson Reuters Eikon API refinitiv

pip install git+git://github.com/yhilpisch/tpqoa # Oanda API

# copying files and marking directories 
mkdir -p /root/.jupyter/custom
wget http://hilpisch.com/custom.css
mv custom.css /root/.jupyter/custom
mv /root/jupyter_notebook_config.py /root/.jupyter/
mv /root/mycert.pem /root/.jupyter/
mv /root/mykey.key /root/.jupyter/
mkdir /root/notebook
cd /root/notebook

# starting jupyter lab
jupyter lab &

# this script it copied to the droplet and needs to be started by the orchestration script


