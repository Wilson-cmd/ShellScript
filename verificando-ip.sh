#!/bin/bash/

cd ~/script

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"
if [[ $1 =~ $regex ]]
then
	echo informe o nome do arquivo de log

	cat $2 | grep $1
else
   	echo "Formato não é válido"
fi

if [ $? -ne 0 ]
then
    echo "O endereço IP procurado não está presente no arquivo"
fi
