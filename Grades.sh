#! /bin/bash
#Justin Rowsell
file = "$1"
if [$1 -eq 0]
then 
	echo "Usage: Grades.sh filename"
fi
while read num first last one two three
do
avg=$(echo "($one+$two+$three)/3" | bc)
echo $avg "["$num"]" $last ", " first 
done<$1 | sort -n -k2 | sort _k3,4
