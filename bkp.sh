#! /bin/bash

echo "Digite o diretorio de backup: "
read diretorio_bkp
mkdir -p ~/backup
cp -rv $diretorio_bkp ~/backup
echo "\nBackup Concluído"

