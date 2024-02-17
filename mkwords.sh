#!/usr/bin/sh
# makes suggestion sequence


xmlstarlet tr xml2txt.xslt bg_wordlist_iv.xml > output.txt

awk 'BEGIN {RS=""}{gsub(/\n\n/,"\n",$0); print $0}' output.txt > wordlist.txt

rm output.txt