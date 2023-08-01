#!/bin/bash

# Update packages

sudo apt update
sudo apt -y upgrade

# Install required packages

sudo apt install -y build-essential python-is-python3 python3-pip git

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# Install jupyterlab for student user

sudo -u student bash -c 'echo "export PATH=$PATH:~/.local/bin" >> ~/.bashrc'

sudo -u student bash -c 'python3 -m pip install --upgrade pip'
sudo -u student bash -c 'pip3 install jupyterlab notebook ipywidgets'

# Install tslab for student

sudo npm install -g tslab

sudo -u student bash -c 'tslab install --python=python3'

