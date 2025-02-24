#!/bin/bash
if [ -z "$1" ]; then
  echo "PLEASE SPECIFY INVENTORY! Either 'devel' OR 'prod'"
  exit 1
fi

pushd playbooks
ansible-playbook --inventory-file ../inv/$1 install-docker.yml \
											install-portainer.yml \
											create-stack-pihole.yml \
											create-stack-traefik.yml \
											create-stack-dashboard.yml \
											create-stack-jdownloader2.yml \
											create-stack-mqtt.yml \
											create-stack-nodered.yml \
											create-stack-vaultwarden.yml \
											install-nmap.yml \
											install-zerotier.yml \
                                            --ask-pass --ask-become-pass
