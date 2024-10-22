#!/bin/bash/

while [ -n "$1" ]
do
	echo Valor: $1
	shift
	echo Parametros: $#
done
