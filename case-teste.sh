#!/bin/bash

#Learning case

variavel="sala"

case $variavel in
"banheiro") echo Você está no $variavel;;
"quarto") echo Você está no $variavel;;
*) echo  'Variavel vazia';;
esac
