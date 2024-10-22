#!/bin/bah
#Convert jpg to png
cd ~/imagens-livros/
for image in $(ls *.jpg | sed "s/.jpg//")
do
convert $image.jpg $image.png
done

mkdir -p ~/png
mv  *.png ~/png/
