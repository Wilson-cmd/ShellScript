#!/bin/bah

#Convert jpg to png

convertImages(){

cd ~/imagens-livros/

for image in $(ls *.jpg | sed "s/.jpg//")
do
convert $image.jpg $image.png
done

mkdir -p png 
mv *.png ./png/

}


convertImages 

case $? in

0) echo "Return: $?";;

esac
