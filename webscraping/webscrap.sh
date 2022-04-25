 #! /bin/bash 
# graping content from url
curl https://webscraper.io/test-sites/e-commerce/allinone/computers/laptops > pcdata.txt
# having description of items listed in file,getting only details
cat pcdata.txt |grep -o "description.*"| sed 's/description">/Mark : /'|sed 's/<\/p>/. /'|sed '1d'  > items.txt
#having prices in other file
cat pcdata.txt | grep -o "price.*"  |sed  's/">/:/' |sed  's/<\/h4>/. /'    > prices.txt      
#joining the two  lines one by one
paste items.txt prices.txt > result.txt
cat result.txt

