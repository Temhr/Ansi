#!/bin/bash 

sudo timedatectl set-timezone Canada/Eastern

sudo NEEDRESTART_MODE=a date >> /home/temhr/Ansi.txt && apt update >> /home/temhr/Ansi.txt && apt dist-upgrade -y >> /home/temhr/Ansi.txt

sudo NEEDRESTART_MODE=a apt install qemu-guest-agent -y

sudo NEEDRESTART_MODE=a apt install git -y

sudo NEEDRESTART_MODE=a apt install ansible -y

sudo ansible-pull -U https://github.com/Temhr/Ansi.git | tee /home/temhr/AnsiLog.txt

sudo reboot
