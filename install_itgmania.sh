#!/usr/bin/env bash

read -p "Please read disclaimer that this installer may do harm to your system; do you want to proceed? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
    echo "You chose the safe route"
then
    echo "I warned you! Downloading setup files and installing dependencies via apt-get"
    cd ~/
    wget https://github.com/itgmania/itgmania/releases/download/v0.7.0/ITGmania-0.7.0-Linux-no-songs.tar.gz
    tar xzf ITGmania-0.7.0-Linux-no-songs.tar.gz
    cd ITGmania-0.7.0-Linux-no-songs/
    sudo ./setup.sh
    sudo apt-get install libusb-0.1-4
    echo "To launch  ~/ITGmania-0.7.0-Linux-no-songs/itgmania/itgmania"
    echo "It finished pray it works and good luck on your fantastic or marvelous journey!"
fi

