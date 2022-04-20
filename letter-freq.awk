#!/usr/bin/gawk -f
 
# only count a-z, ignore A-Z and any other characters
 
BEGIN { LETTERS = "ъьѣѫаеноияртвслкмпздубчгцжхшфйщюЪЬѢѪАЕНОИЯРТВСЛКМПЗДУБЧГЦЖХШФЙЩЮ" }
 
{
    len = length($0); 
    for (i = 1; i <= len; i++) {
        c = substr($0, i, 1);
        ltr = index(LETTERS, c);
 
        if (ltr > 0) {
            ++count[ltr];
        }
    }
}
 


# print relative frequency of each letter
   
END {
    min = count[1]; 
	len = length(LETTERS); 
	for (ltr = 2; ltr <= len; ltr++) {
        if (count[ltr] < min) {
            min = count[ltr];
        }
    }
 

  
 PROCINFO["sorted_in"] = "@val_num_desc"

    for (i in count)  
    str=sprintf("%s%s",str,substr(LETTERS, i, 1));
    print str;

 #   for (i=1; i<=n; i++) {
 #           print ind[i] " : " substr(LETTERS, ind[i], 1) " : " count[ind[i]]
 #   }

}