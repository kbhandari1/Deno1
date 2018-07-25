#!/bin/bash

# this will print all prime numbers between 1 to 100 !!!

prime_1=0
echo " Primenumber between 1 to 100 is:"
echo "1"  
echo "2"
for((i=3;i<=100;))
do
for((j=i-1;j>=2;))
do
if [  `expr $i % $j` -ne 0 ] ; then
prime_1=1
else
prime_1=0
break
fi
j=`expr $j - 1`
done
if [ $prime_1 -eq 1 ] ; then
echo $i
fi
i=`expr $i + 1`
done
