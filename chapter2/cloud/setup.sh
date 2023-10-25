#!/bin/bash

# setting up the digital ocean droplet
# basic python and jupyter lab installation

# ip address FROM PARAMETER
MASTER_IP=$1

# copying the files 
scp install.sh root@${MASTER_IP}:
scp mycert.pem mykey.key jupyter_notebook_config.py root@${MASTER_IP}:

# executing the installation script
ssh root@${MASTER_IP} bash /root/install.sh
