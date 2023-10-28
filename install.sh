#!/bin/bash

apt-get --version > /dev/null 2>&1
if [[ $? == 0 ]]
then
    apt-get install $(cat system-requirements.txt)
fi

pacman --version > /dev/null 2>&1
if [[ $? == 0 ]]
then
    pacman -S $(cat system-requirements.txt)
fi

dnf --version > /dev/null 2>&1
if [[ $? == 0 ]]
then
    dnf install $(cat system-requirements.txt)
fi

INSTALL_DIR=/opt/wireguard-gui-python

cp -r . $INSTALL_DIR
chown -R $USER:$USER $INSTALL_DIR
chmod +x $INSTALL_DIR/run.sh
chmod +x $INSTALL_DIR/resources/wgp.desktop
python3 -m venv $INSTALL_DIR/venv
source $INSTALL_DIR/venv/bin/activate
pip3 install -r $INSTALL_DIR/requirements.txt
deactivate
cp $INSTALL_DIR/resources/wgp.desktop /usr/share/applications/

