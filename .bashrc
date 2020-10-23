# home
alias home='cd ~'

# Platte source tree
alias src='cd ${SRC_TREE}'

# human-readable file listing
alias ll='ls -alh'

# disk usage
alias df='df -H'
alias du='du -ch'

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
