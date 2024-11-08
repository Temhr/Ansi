#!/bin/bash 

sudo timedatectl set-timezone Canada/Eastern

sudo NEEDRESTART_MODE=a apt update && apt dist-upgrade -y

sudo NEEDRESTART_MODE=a apt install qemu-guest-agent -y

sudo NEEDRESTART_MODE=a apt install git -y

sudo NEEDRESTART_MODE=a apt install ansible -y

sudo ansible-pull -U https://github.com/Temhr/Ansi.git | tee /home/temhr/initLog.txt

sudo reboot
