#! /bin/bash
#Justin Rowsell
file = "$1"
if [$1 -eq 0]
then 
	echo "Usage: GradesAwk.sh filename"
fi
awk -F" " '{print (($4+$5+$6)/3)" "$1" "$3", "$2}' $file | sort -k3