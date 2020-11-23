# cd to sibling directory
function up() {
    builtin cd ../$1
}

# compile and run a c main program
# argument is .c file that contains a main(), and only includes standard headers
function ctest() {
    cc -o testme "$1"
    "${PWD}/testme"
}

# choose a random character from the given set
choose() {
    echo ${1:RANDOM%${#1}:1};
}

# generate a strong, random password 17 characters with no duplicates
# and includes special characters
function randpass() {
    pass="$({
      choose 'abcdef'
      choose '789'
      choose '%&'
      choose 'WXYZ'
      choose '56'
      choose 'TUV'
      choose 'ghi'
      choose '?#'
      choose 'MNOPQRS'
      choose '234'
      choose 'mnopqrs'
      choose '=-'
      choose 'GHIJKL'
      choose 'jkl'
      choose '01'
      choose 'tuvwxyz'
      choose 'ABCDEF'
    } | sort -R | awk '{printf "%s",$1}')"
    echo $pass
}

# optional argument is number of characters; if not specified, 16 will be used
function randpass2() {
    # invoke the pseudo-random number generator '/dev/urandom'
    # pipe through translate (tr)
    # tr args: -c use complement of SET1; -d delete characters in SET1, do not translate
    # '[:alnum:]' all letters and digits
    # '[:graph:]' all printable characters, excluding spaces
    # pipe through head n bytes
    tr -cd '[:alnum:]' < /dev/urandom | head -c ${1:-40}
    printf "\n"
}

# display comprehensive machine info
function machine_info() {
    echo -e "\nMachine information:" ; uname -a
    echo -e "\nUsers logged on:" ; w -h
    echo -e "\nCurrent date :" ; date
    echo -e "\nMachine status :" ; uptime
    echo -e "\nMemory status :" ; free
    echo -e "\nFilesystem status :"; df -h
}
