#!/bin/bah
#Convert jpg to png
for image in $(ls ~/imagens-livros/ | sed "s/.jpg//")
do
convert ~/imagens-livros/"$image.jpg" ~/imagens-livros/"$image.png"
done

mkdir -p ~/png
mv  ~/imagens-livros/*.png ~/png/
