#! /bin/bash
mypath=~
filter=$(ls $mypath | grep ".txt")
if [ ${#filter[@]} -ne 0 ] ;
then
echo "here the txt files in my home dir"
ls $mypath |grep ".txt"
else
echo " there is no txt files here"
fi
