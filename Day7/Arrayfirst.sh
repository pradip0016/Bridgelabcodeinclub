#!/bin/bash -x

counter=0;
fruit[((counter++))]="Apple"
fruit[((counter++))]="banana"
fruit[((counter++))]="orange"

echo ${fruit[@]}
