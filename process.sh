#! /bin/bash

for pid in $(ps -e -o pid  --sort -size | head -n 11 | grep [0-9])

do
        echo $(ps -p $pid -o comm=)
        echo $(date +%F,%H:%M:%S)
        echo $(bc <<< "scale=2;$(ps -p $pid -o size | grep [0-9])/1024")" MB"
done
