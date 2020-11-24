
# cd to sibling directory
function up() {
    builtin cd ../$1
}


# grep recursively in .c files for string
# argument is pattern
function rgc() {
    rg -g "*.c" "$1"
}


# grep recursively in .java files for string
# argument is pattern
function rgj() {
    rg -g "*.java" "$1"
}


# generate c unit test template file
function ctest_create() {
    cp -i ~/cunit_test_template.c ${PWD}/"$1"
}

# compile and run a c main program
# argument is .c file that contains a main(), and only includes standard headers
function ctest() {
    # compile the .c file
    cc -o testme "$1"

    # run the test
    "${PWD}/testme"

    # echo the result
    echo "$? failure(s)"
}


# compile and run a c main program, passing in -v verbose flag
# argument is .c file that contains a main(), and only includes standard headers
function ctestv() {
    # compile the .c file
    cc -o testme "$1"

    # run the test
    "(${PWD}/testme -v)"

    # echo the result
    echo "$? failure(s)"
}


# Determine if the path contains a given directory
# Return 1 if target is contained within pattern, 0 otherwise
# Called like: contains $PATH $dir
function contains {
    local pattern=":$1:"
    local target=$2
    # This will be a case-sensitive comparison unless nocasematch is set
    case $pattern in
        *:$target:* ) return 1;;
        *           ) return 0;;
    esac
} # end of function contains


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
