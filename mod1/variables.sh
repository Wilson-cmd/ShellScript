#!/usr/bin/env bash

#  SET VARIABLE IN ONE LINE
NAME="Wilson Nascimento Costa"
echo $NAME
#-----------------------------
# SET VARIABLE IN MORE THAN ONE LINE
NAME="Wilson
Nascimento
Costa"
echo "$NAME" # THE VARIABLE NEEDS TO BE IN DOBLE QUOTES
#-----------------------------
NUM1=7
NUM2=9
echo $(($NUM1 + $NUM2)) # TO CALCULATE NUMBERS NEEDS TO BE IN 2 PARENTHESES
#-----------------------------
# SET VARIABLE AFTER RUN COMMAND
OUTPUT=`cat /etc/passwd | egrep wnc`
echo $OUTPUT
#-----------------------------
