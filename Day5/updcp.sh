#!/bin/bash -x

originalfile="original/original.sh"
original="original.sh"
updatefile="update/update.sh"
backupfile="backup_original/"
diff -q $originalfile $updatefile
result=`echo $?`
if [ "$result" -eq 1 ]
then
cp $originalfile $backupfile
cp $updatefile $originalfile
echo "chnages Done"
diff -q $backupfile$original $updatefile
else
echo "already updated"
fi
