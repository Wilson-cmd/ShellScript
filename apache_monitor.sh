#!/bin/bash

if [ $(curl --output /dev/null --write-out %{http_code} --silent http://localhost:8081) != 200 ]

then
	echo "Servidor inoperante"
	echo "Reinicializando ..."
	sudo systemctl restart apache2
	echo "Pronto!"
else
	echo "Servidor operante"

fi
