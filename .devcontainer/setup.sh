#!/bin/bash

echo ">>>> >>>> >>>> >>>> ENTERING SETUP.SH <<<< <<<< <<<< <<<< "

## update and install some things we should probably have
apt-get update
apt-get install -y \
  curl \
  apt-utils \
  git \
  gnupg2 \
  jq \
  sudo \
  zsh \
  ca-certificates \
  groff \
  less \
	nasm

echo "Installing oh-my-zsh"

setup and install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp -R /root/.oh-my-zsh /home/$USERNAME
cp /root/.zshrc /home/$USERNAME
sed -i -e "s/\/root\/.oh-my-zsh/\/home\/$USERNAME\/.oh-my-zsh/g" /home/$USERNAME/.zshrc
chown -R $USER_UID:$USER_GID /home/$USERNAME/.oh-my-zsh /home/$USERNAME/.zshrc

echo "Installing oh-my-zsh - DONE"

echo ">>>> >>>> >>>> >>>> EXITING SETUP.SH <<<< <<<< <<<< <<<< "
