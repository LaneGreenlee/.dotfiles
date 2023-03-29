#!/bin/bash

if [ $(uname) != "Linux" ]; then #Check if operating system is linux
	echo "INCORRECT OS TYPE" >> linuxsetup.log #appends error message to linuxsetup.log
	exit
fi	


mkdir -p ~/.TRASH # Creates .TRASH directory if it doesn't already exist.

if [ -e ~/.vimrc ]; then #checks if .vimrc exists in the home directory
	mv ~/.vimrc ~/.bup_vimrc #moves .vimrc in home directory to .bup_vimrci
	echo "Current .vimrc file was changed to '.bup vimrc'" >> linuxsetup.log #Appends messge to the setup log
fi #Finishes if block


cp ~/.dotfiles/etc/vimrc ~/.vimrc # Redirects and overwrites the contents of ./etc/vimrc to .vimrc in home directory 
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #apends statement to end of bashrc file in home directory


