#!/usr/bin/env bash

KEYDEBUG=0
LEVELDEBUG=0

function Debug(){
    [ $1 -le $LEVELDEBUG ] && echo "Debugging $*"
}

function Loopping(){
    local total=0
        for i in `seq 1 10`
        do
            Debug 1 "Debugginh with value $i"
            ((total+=$i))
            Debug 2 "After debug: $total"
        done

}


case "$1" in 
    -d) [ $2 ] && LEVELDEBUG=$2 ;;
    *) Loopping                 ;;
esac

Loopping 1 20