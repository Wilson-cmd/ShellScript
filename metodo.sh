#!/bin/bash/

cd ~/script

function methodsHTTP(){

case $(echo $1 | awk '{ print toupper($1) }') in
"GET") cat apache.log | grep -i GET;;

"POST") cat apache.log | grep -i POST;;

"PUT") cat apache.log | grep -i PUT;;

"DELETE") cat apache.log | grep -i DELETE;;

*) echo "Opção invalida";;
esac

}

if [ -z $1 ]
then
	read -p "Informe uma opção, sendo (GET, POST, PUT, DELETE): "
	while [ -z $REPLY ]
	do
		read -p "Informe (GET, POST, PUT, DELETE): "
	done
	methodsHTTP $REPLY
else
	methodsHTTP $1
fi
