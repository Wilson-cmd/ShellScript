# CHEK 
VARONE=$1
VARTWO=$2

# IF [[ CONDITIONAL ]]; THEN
# COMMAND
# ELSE
# COMMAND
# FI

if test $VARONE != $VARTWO
then
    echo Diferente
else
    echo $*
fi


# ONE LINE
# [ CONDITIONAL ] && COMMAND
# [ $1 -gt 10 ] && echo $$
