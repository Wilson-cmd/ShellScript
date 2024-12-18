echo "=========FOR: 1========="
for ((  i = 0; i <= 10; i++ ))
do
    echo $i
done

echo "=========FOR: 2========="

for i in `seq 10`
do
    echo $i
done

echo "=========UNIL: 1========="
until [ $counter -gt 3 ]
do
    echo Counter: $counter
    (( counter++ ))
    sleep 1
done

echo "=========WHILE and FOR: 1========="
CARS=(
    'GOL'
    'GOLF'
    'SAVEIRO'
    'SANTANA'
    'T-CROSS'
    'POLO'
)

# FOR
for i in ${CARS[@]}
do
    echo $i
done

# WHILE
counter=0
while [[ $counter -lt ${#CARS[@]} ]]
do
    echo $counter
    ((  counter++ ))
done

for i in `seq 10`
do
    [ `expr $i % 2` -eq 0 ] && echo "The number $i is module (2)"
done