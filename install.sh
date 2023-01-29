#!/bin/bash
#update and upgrade
sudo apt update && upgrade

#dependicies of homebrew (brew)
sudo apt-get install build-essential procps curl file git

#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile


#install minikube (it will install kubectl as adependicies of minikube)
brew install minikube

#install the hyperviser
apt install qemu
apt install qemu-system



