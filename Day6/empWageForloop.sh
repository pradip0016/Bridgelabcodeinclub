#!/bin/bash -x

ispresent=10;
isfulltime=1;
isparttime=2;
totalsalary=0;
emprateperhr=20;
numworkingdays=20;

for ((  day=1; day<=$numworkingdays; day++ ))
do
	empcheck=$((RANDOM%3))
		case $empcheck in
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
salary=$(( $emphr*$emprateperhr ))
totalsalary=$(( $totalsalary+$salary ))
done
echo "$totalsalary"
