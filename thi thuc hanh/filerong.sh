#!/bin/bash
read -p "Nhap vao ten thu muc" a
count=0
b=$(find $a -type f)
for i in $b
do
	c=$(stat -c %s $i)
	if [ $c -eq 0 ]
	then	
	let count+=1
	fi
done
echo "So file rong trong thu muc $a : $count"
