#!/bin/bash
ssh 172.16.0.2 'df -i' > /root/Desktop/DF
cat /root/Desktop/DF | tail -n +2 | head -n +4 > /root/Desktop/DFchinhxac
while read line
do
name=$(echo $line | awk '{print $1}')
inode=$(echo $line | awk '{print $5}' | sed s/%//g)
echo -ne "[$name]:\t"
for i in $(seq 1 $inode)
do
echo -n "#"
done
echo " "
done < /root/Desktop/DFchinhxac
