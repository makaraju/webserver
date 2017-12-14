#!/bin/bash

yum install wget git -y

pip install ansible

cd /tmp

git clone https://github.com/makaraju/webserver.git

cd /tmp/webserver/ansible
ansible-playbook webserver.yml -i "localhost," --connection local > playbook.log
