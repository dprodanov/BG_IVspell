#!/usr/bin/sh
# makes suggestion sequence


xmlstarlet tr xml2txt.xslt bg_wordlist_iv.xml | uniq >> output.txt

sort  output.txt  > output2.txt

awk 'BEGIN {RS=""}{gsub(/\n\n/,"\n",$0); print $0}' output2.txt > wordlist.txt


 
rm output.txt output2.txt