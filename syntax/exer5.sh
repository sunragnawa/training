#! /bin/bash
user=$(whoami)
grp=$(groups)
for  i in $grp;
do 
echo "$user is a part of group $i"
done
