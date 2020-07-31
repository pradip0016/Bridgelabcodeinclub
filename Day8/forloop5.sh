#!/bin/bash -x
clear
echo "enter the number still u want prime number "
read n
for (( i=1 ; i<n ; i++ ))
do
flag=0
	for (( j=2 ; j<i ; j++ ))
	do
	     if [ $(( $i%$j )) -eq 0 ]
		then
		flag=1
	     fi
	done
if [ $flag -eq 0 ]
then
echo $i
fi
done
