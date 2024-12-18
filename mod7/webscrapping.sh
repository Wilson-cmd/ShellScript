#! /usr/bin/env bash

MSGS="ERROR"
MSGS2="Input the correct URL, follow example [https://webpage.com.br]"


[ ! -x `which lynx` ] && sudo apt install lynx

function extractValueTitle(){
    for i in $*
    do
        echo $i | egrep "<title>.*</title>" 
    done
}

if [[ "$1 " =~ ^(http[s]?://) ]] 
then
    # lynx -source $1  | echo -e "\e[32;1m`tee`"
    lynx -source $1  | extractValueTitle `tee`
else
    echo -e "\e[36;1m$MSGS:\t$MSGS2"; exit 1
fi