#!/bin/bash -x
# check file modified 7 day ago and copy

BKP="Backup/"
for files in `ls *`
do
find . -mtime +7
result=`echo $?`
if [ "$result" -eq 1 ]
then
cp -R $files $BKP
else
echo "no one file modified 7 day ago"
fi
done
