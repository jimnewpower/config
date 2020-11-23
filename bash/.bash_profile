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
export SRC_TREE="/home/jim/develop/pra/src"
PATH="$SRC_TREE/common/bin:$PATH"
export DEBUG="/home/jim/develop/pra/src/debug.txt"
export CONFIG_HOST_FILENAME=jim-XPS-15-9550.mk
export PLATTE_RIVER_DEBUG=xyzzy
# export RELEASE=t
export NOPCINT=t
export TEMP="/home/jim/tmp"

# Personal development environment
export SRC_TREE_PERSONAL="/home/jim/develop/personal"
