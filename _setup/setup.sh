#!/bin/sh

if [ -z "$1" ]
  then
    echo "Need a username for creating a user"
    exit 1
fi

sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install cmake gcc libncurses-dev vim


# Create user & add to Sudo
sudo adduser $1
echo "$1 ALL=(ALL:ALL) ALL" | sudo EDITOR='tee -a' visudo

mkdir -p /home/$1/Repos/mscott5861
cd /home/$1/Repos/mscott5861

# Clone the necessary stuff
git clone https://github.com/mscott5861/dotfiles.git

# Build & install Fish Shell
cd /tmp
git clone https://github.com/fish-shell/fish-shell.git
cd fish*
mkdir build
cd build
cmake ..
make
sudo make install
