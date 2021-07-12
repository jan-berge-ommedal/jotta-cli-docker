#!/bin/bash
set -euxo pipefail

apt-get update

# TODO update install instructions
apt install -y gnupg

# https://docs.jottacloud.com/en/articles/1436855-jottacloud-cli-for-linux-debian-packages

apt-get install -y wget apt-transport-https ca-certificates
wget -O - https://repo.jotta.us/public.gpg | apt-key add -
echo "deb https://repo.jotta.us/debian debian main" | tee /etc/apt/sources.list.d/jotta-cli.list
apt-get update
apt-get install -y jotta-cli

apt-get clean