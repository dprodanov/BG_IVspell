#!/usr/bin/sh
# makes suggestion sequence

# wc -l wordlist > yourlang.dic
# sort wordlist | uniq >> yourlang.dic


tr -d "\n" < $1  \
| while read -n1 char; \
do echo $char; \
done \
| sort | uniq -c| sort -rn \
| sed "s/^.* //" \
|tr -d "\n"