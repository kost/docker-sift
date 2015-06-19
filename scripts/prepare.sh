#!/bin/sh

#set -x 

# this forces dpkg not to call sync() after package extraction and speeds up install
echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup
# we don't need and apt cache in a container
echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache
# another idea
echo 'Acquire::Languages "none;";' > /etc/apt/apt.conf.d/no-lang

