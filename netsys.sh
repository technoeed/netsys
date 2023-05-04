#!/bin/bash
check_connection_type(){
    if ping -c 1 -W 1 google.com &> /dev/null; then
      echo "Wireless"
    else
      echom "Wired"
    fi
}

if [ "$1" == "--mon" ]; then
  ./monitor.sh
elif [ "$1" == "--man" ]; then
  ./managed.sh
else
  echo "Invalid argument. Please use either '--mon' for monitor mode or '--man' for managed mode."
fi
