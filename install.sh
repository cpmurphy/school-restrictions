#! /bin/bash

if [ `whoami` != 'root' ]; then
  echo 'Need to run this as root!  Try with sudo.'
  exit 1
fi

cp /etc/hosts /etc/hosts.enabled
if [ -f /etc/hosts.disabled ]; then
  echo 'Not overwriting /etc/hosts.disabled'
else
  echo 'Giving you a null /etc/hosts.disabled.  Please edit this to taste.'
  cp /etc/hosts /etc/hosts.disabled
fi
mkdir -p /usr/local/bin
cp start-school.sh end-school.sh /usr/local/bin
echo 'start-school.sh and end-school.sh are in /usr/local/bin'
