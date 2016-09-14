#!/bin/bash
#Justin Rowsell
file="$1"
grep '[0-9]$' $file  | wc -l
grep '^[a-zA-Z]' $file | wc -l
awk 'length($1) == 12 {print $1}' $file | grep -x '[a-zA-Z]\+' | wc -l
grep '[0-9]\{3\}\-[0-9]\{3\}-[0-9]\{4\}' $file | wc -l
grep '303-[0-9]\{3\}-[0-9]\{4\}' $file | wc -l
grep -E '^[aeiouyAEIOUY]' $file | grep '[0-9]$' | wc -l
grep 'geocities.com$' $file | wc -l
grep '@' $file | grep "^[A-Za-z0-9._%+-]+@^[A-Za-z0-9.-]+\.^[A-Za-z]{2,6}" | wc -l