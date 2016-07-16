#!/bin/bash
ssh root@192.168.1.3 ' df -i ' > /root/Desktop/veinode.txt
cat /root/Desktop/veinode.txt  | tail -n+2 | head -n+4 > /root/Desktop/veinode1.txt
while read LINE
do
	name=$(echo $LINE | awk '{print $1}')
	inode=$(echo $LINE | awk '{print $5}' | sed s/%//g)
	echo -ne "[$name]:\t"
	for i in $(seq 1 $inode)
	do
	echo -n "#"
	done
	echo ""
done < /root/Desktop/veinode1.txt

