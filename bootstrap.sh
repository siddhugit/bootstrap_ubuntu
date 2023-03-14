#!/bin/bash

#passwordless sudo
sudo bash -c 'echo "ssingh ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/99_sudo_include_file'

#core.sh func myaliases .gitconfig

#install packages
. ./core.sh

#bash_profile
ln -sf ${HOME}/.bashrc ${HOME}/.bash_profile

#ssh setup
ssh-keygen -q -t rsa -b 4096 -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
sudo systemctl enable ssh
sudo ufw allow ssh

#edit bashrc
bash -c 'echo "PATH=$PATH:~/bin/" >> ${HOME}/.bashrc'
bash -c 'echo "source myaliases" >> ${HOME}/.bashrc'
bash -c 'echo "source func" >> ${HOME}/.bashrc'
bash -c 'echo "export PS1="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "" >> ${HOME}/.bashrc'
bash -c 'echo "eval $(ssh-agent)" >> ${HOME}/.bashrc'
bash -c 'echo "ssh-add" >> ${HOME}/.bashrc'

#copy files 
mkdir -p ${HOME}/bin
cp ./func ${HOME}/bin/
cp ./myaliases ${HOME}/bin/
cp ./.gitconfig ${HOME}/