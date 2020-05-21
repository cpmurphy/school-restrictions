#! /bin/bash

cp /etc/hosts.disabled /etc/hosts
killall minecraft-launcher 
killall firefox
ps -ef | grep minecraft-launcher | grep -v grep
ps -ef | grep firefox | grep -v grep
chmod -x /opt/minecraft-launcher/minecraft-launcher 
