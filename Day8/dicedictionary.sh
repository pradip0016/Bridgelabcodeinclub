#!/bin/bash -x

declare -A face_values
read -p "enter how many times want to roll die " rolldietimes
isRoll=0;
FACE_ONE=1;
FACE_TWO=2;
FACE_THREE=3;
FACE_FOUR=4;
FACE_FIVE=5;
FACE_SIX=6;

while [[ isRoll -lt rolldietimes ]]
do
	roll=$(( $RANDOM%6 + 1 ))

case $roll in
$FACE_ONE)
	face="one";;
$FACE_TWO)
	face="TWo";;
$FACE_THREE)
	face="three";;
$FACE_FOUR)
	face="four";;
$FACE_FIVE)
	face="five";;
$FACE_SIX)
	face="six";;
*)
	face="unpredictable situation happend";;
esac

face_values[$face]=$roll
echo $face
isRoll=$(( $isRoll +1 ))
done

echo "${face_value[@]}"

