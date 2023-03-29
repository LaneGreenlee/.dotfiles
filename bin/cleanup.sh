#!/bin/bash

if [ -d ~/.vimrc ]; then #checks if vimrc exists
	rm -rf ~/.vimrc #removes vimrc in home directory
fi # ends command block


sed -i 's/~\/.dotfiles\/bashrc_custom//g' ~/.bashrc #uses sed to go in and delete the line
if [ -d ~/.TRASH ]; then #checks if trash exists
    rm -rf ~/.TRASH/* #Removes it if it does, and everything inside it
fi #ends command block
