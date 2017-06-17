#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/scripts/1sys_packages
$DIR/scripts/2pip_packages
$DIR/scripts/3git_repos

ln -s $DIR/confs/.bash_aliases ~
ln -s $DIR/confs/.tmux.conf ~
ln -s $DIR/envs/.env ~
ln -s $DIR/envs/.env /opt
ln -s $DIR/envs/routersploit/.env /opt/routersploit
ln -s $DIR/envs/metasploit-framework/.env /opt/metasploit-framework

mv /boot/cmdline.txt /boot/cmdline.txt.bak
cp $DIR/mods/cmdline.txt /boot/
mv /boot/config.txt /boot/config.txt.bak
cp $DIR/mods/config.txt /boot/
mv /etc/rc.local /etc/rc.local.bak
ln -s $DIR/mods/rc.local /etc/
mv /etc/network/interfaces /etc/network/interfaces.bak
ln -s $DIR/mods/interfaces /etc/network/
mv /etc/modules /etc/modules.bak
ln -s $DIR/mods/modules /etc/

echo "Enter these commands in Metasploit for cached search results:"
echo "msf > db_driver sqlite3"
echo "msf > db_rebuild_cache"

