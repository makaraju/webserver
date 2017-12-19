#!/bin/bash
#forked from makaraju

yum install wget git -y
cd /tmp
wget https://bootstrap.pypa.io/get-pip.py

python get-pip.py
pip install ansible

git clone https://github.com/makaraju/webserver.git

cd /tmp/webserver/infra/ansible
ansible-playbook webserver.yml -i "localhost," --connection local > /var/log/playbook.log
