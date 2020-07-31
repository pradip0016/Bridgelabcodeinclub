#!/bin/bash -x
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalemphr=0;
totalworkingdays=0;

function getworkhr() {
	case $1 in 
		$IS_FULL_TIME)
			emphr=8
			;;
		$IS_PART_TIME)
			emphr=4
			;;
			*)
			emphr=0
			;;
esac
			}


function getempwage()
{
echo $(($1*$EMP_RATE_PER_HR))
}

while [[ $totalemphr -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $NUM_WORKING_DAYS ]]
do

((totalworkingdays++))

getworkhr $((RANDOM%3))
totalemphr=$(($totalemphr + $emphr))
dailywages[$totalworkingdays]=$(($emphr*$EMP_RATE_PER_HR))
done

totalsalary="$( getempwage $totalemphr )"

