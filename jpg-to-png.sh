#!/bin/bah
#Convert jpg to png
PATHIMAGES=~/imagens-livros
for image in $(ls $PATHIMAGES/ | sed "s/.jpg//")
do
convert $PATHIMAGES/"$image.jpg" $PATHIMAGES/"$image.png"
done

mkdir -p ~/png
mv  $PATHIMAGES/*.png ~/png/
