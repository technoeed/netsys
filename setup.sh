#!/bin/bash

echo "Running apt update..."
{
    for ((i=0; i<=100; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --title "Update Progress" --gauge "Please wait while updating..." 6 50 0


alias netsys='bash /usr/local/sbin/netsys/netsys.sh'

if [ $(echo $SHELL) == "/bin/zsh" ]; then
    source ~/.zshrc > /dev/null 2>&1
fi

if [ $(echo $SHELL) == "/bin/bash" ]; then
    source ~/.bashrc > /dev/null 2>&1
fi

figlet netsys -c
echo "Everything is done!! To run this command execute netsys --man/--mon in the terminal as root"
