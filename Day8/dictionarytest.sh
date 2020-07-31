#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound"  ${sounds[dog]}
echo "All sounds" ${sounds[@]}
echo "showing key" ${!sounds[@]}
echo "number of animal" ${#sounds[@]}
unset sounds[dog]
echo ${!sounds[@]}

for values in ${!sounds[@]}
do 
 	echo $values
done
