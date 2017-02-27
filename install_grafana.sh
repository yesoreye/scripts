#!/bin/sh

sudo apt-get update && sudo apt-get upgrade --yes
wget https://grafanarel.s3.amazonaws.com/builds/grafana_4.1.2-1486989747_amd64.deb
sudo apt-get install -y adduser libfontconfig
sudo dpkg -i grafana_4.1.2-1486989747_amd64.deb
sudo service grafana-server start
curl "localhost:3000"
