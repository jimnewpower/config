# ~/.bash_profile: executed by the command interpreter for login shells.

# Put this in your .bash_profile file.
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# PRA develop environment
export SRC_TREE="/home/jim/develop/basinmod"
export DEBUG="/home/jim/develop/basinmod/debug.txt"
export CONFIG_HOST_FILENAME=jim-Predator-PH317-54.mk
export PLATTE_RIVER_DEBUG=xyzzy
# export RELEASE=t
export NOPCINT=t
export TEMP="/home/jim/tmp"

export PATH=$PATH:/home/jim/.local/bin:/home/jim/develop/basinmod/common/bin

# Personal development environment
export SRC_TREE_PERSONAL="/home/jim/develop/"

export PATH=$PATH:/snap/bin/flutter/bin

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
