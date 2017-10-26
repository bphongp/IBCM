#!/bin/bash
#bamphiane Annie Phongphouthai
#bp8qg
#October 24, 2017
#averagetime.sh
result=0

echo "Enter the exponent for counter.cpp "
read input

if [ $input == "quit" ]
then
    exit 0
    fi

for ((i=1; i<=5; i++))
do
    echo "Running iteration $i..."
    time=`./a.out $input`
    echo "Time taken:" $time "ms"
    result=`expr $result + $time`
done

echo "5 iterations took" $result "ms"
avg=`expr $result / 5`
echo "Average time was" $avg "ms"
