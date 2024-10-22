#!/bin/bash/

while test -n "$1"
do
case $1 in
-a) echo "Opção A";;
-b) echo "Opção B";;
-c) echo "Opção C";;
*) echo "Opção Ivalida";;
esac
shift
done
