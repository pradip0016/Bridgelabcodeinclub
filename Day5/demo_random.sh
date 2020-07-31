isPresent=1;
randomcheck=$((RANDOM%2));
if  [ $isPresent -eq $randomcheck ]
then
echo "person is present"
else
echo "person is absent"
fi

