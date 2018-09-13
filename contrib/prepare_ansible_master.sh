#!/bin/bash

sudo apt-get --assume-yes install python-pip
sudo apt-get --assume-yes install libkrb5-dev

export LC_ALL=C

sudo pip install pywinrm
sudo pip install requests-ntlm
sudo pip install requests-kerberos
sudo pip install requests-credssp

sudo apt-get --assume-yes update
sudo apt-get --assume-yes install software-properties-common
sudo apt-add-repository  ppa:ansible/ansible -y
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install ansible

git clone http://github.com/adelina-t/ovn-kubernetes
git clone http://github.com/adelina-t/run_e2e

