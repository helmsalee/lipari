#!/bin/sh
set -x #echo on
# General updates
sudo apt-get update
# Install basic packages
sudo apt install jq
exit 0 # success