#!/bin/bash

if [ "$#" -lt 2 ]; then
	echo "The $0 need param"
	exit 1
fi
arq=($@)
for i in $@;
do
	echo $i
done
echo "${arq[*]}"
