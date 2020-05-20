#!/bin/bash

cat >> ~/.bashrc << BASHRC_ADDING

# link dotfiles
if [ -f ~/.bashrc_dotfiles ] ; then
	. ~/.bashrc_dotfiles
fi
BASHRC_ADDING
