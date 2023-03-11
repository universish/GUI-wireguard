#!/bin/bash
SCRIPT_PATH=$(readlink -f $0)
DIR_PATH=$(dirname $SCRIPT_PATH)

cd $DIR_PATH

apt-get --version > /dev/null 2>&1
if [[ $? == 0 ]]
then
    sudo apt-get install $(cat system-requirements.txt)
fi

pacman --version > /dev/null 2>&1
if [[ $? == 0 ]]
then
    sed -i 's/python3-pip/python-pip/g' system-requirements.txt
    sudo pacman -S $(cat system-requirements.txt)
fi

dnf --version > /dev/null 2>&1
if [[ $? == 0 ]]
then
    sudo dnf install $(cat system-requirements.txt)
fi

sudo pip3 install -r requirements.txt
sudo cp -r . /opt/wireguard-gui-python
sudo chown -R $USER:$USER /opt/wireguard-gui-python
cd /opt/wireguard-gui-python
sudo chmod +x resources/wgp.desktop

cp resources/wgp.desktop $(xdg-user-dir DESKTOP)

