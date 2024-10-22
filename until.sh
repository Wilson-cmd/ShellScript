#! /bin/bash

echo "Informe um numero: "
numero=20
until [ $numero -eq 0 ]
do
	echo Quadrado de: $numero é $[$numero * $numero]
	numero=$[ $numero - 2 ]

done
