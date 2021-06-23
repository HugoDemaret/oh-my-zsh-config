#!/bin/bash
#install
sudo pacman -Syu zsh
#change shell
zsh --version
chsh -s $(which zsh)

exit
