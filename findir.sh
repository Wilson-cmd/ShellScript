#! /bin/bash
cd ~/
function listdir(){
        for dir in $(find $(ls */ -d) -type f -name "*.jpg")
        do
                cd ~/"$(dirname $dir)"
                local img=$(basename $dir | sed 's/.jpg//')
                convert $img.jpg $img.png
        done
}

listdir

case $? in
0)echo "Done!";;
*)echo "Erro!";;
esac
