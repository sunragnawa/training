#! /bin/bash
echo "$(shuf   jokes.txt)" > rando.txt
while read line;do echo "$line" && break ;done < rando.txt 
