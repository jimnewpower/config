# python path
export PATH=${PATH}:/Users/jim/AppData/Local/Programs/Python/Python38/python

# human-readable file listing
alias ll='ls -alh'

# disk usage
alias df='df -H'
alias du='du -ch'

# Platte source tree
export SRC_TREE='/c/Users/jim/src/basinmod'
alias src='cd ${SRC_TREE}'

# shortcuts to quickly go up a directory
alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'

# count files
alias count='find . -type f | wc -l'

# history
alias h='history'

# Safety Nets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
