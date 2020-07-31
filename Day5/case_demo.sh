#!/bin/bash -x
isparttime=1;
isfulltime=2;
emprateperhr=20;
empcheck=$((RANDOM%3));
echo "working period" $empcheck;

case    $empcheck in 
	$isfulltime)
	emphr=8
	;;
	
	$isparttime)
	emphr=4
	;;
*)
	emphr=0
;;
esac
salary=$(($emphr*$emprateperhr));

echo "for $empcheck salary is $salary";
