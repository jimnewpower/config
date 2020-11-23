# listings
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias sib='ls -F ..'

# navigation
alias home='cd ~'
alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'
alias src-platte='cd $SRC_TREE'
alias src='cd $SRC_TREE_PERSONAL'

export SRC_TREE="/home/jim/develop/pra/src"
PATH="$SRC_TREE/common/bin:$PATH"
export SRC_TREE_PERSONAL="/home/jim/develop/personal"
export DEBUG="/home/jim/develop/pra/src/debug.txt"
export CONFIG_HOST_FILENAME=jim-XPS-15-9550.mk
export PLATTE_RIVER_DEBUG=xyzzy
# export RELEASE=t
export NOPCINT=t
export TEMP="/home/jim/tmp"
