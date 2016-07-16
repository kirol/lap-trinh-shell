#!/bin/bash
ssh root@192.168.1.3 ' ps -eo pcpu ' > /root/Desktop/cpu.txt
ssh root@192.168.1.3 ' ps -eo pmem ' > /root/Desktop/mem.txt
a=$(cat /root/Desktop/cpu.txt | tail -n+2 | awk '{cpu+=$1} END {print cpu}')
b=$(cat /root/Desktop/mem.txt | tail -n+2 | awk '{mem+=$1} END {print mem}')
echo "%CPU hien tai la: $a"
echo "%MEM hien tai la: $b"
if [[ $a > 10.0 ]]
then
	echo "CPU qua tai" | mail -s "CPU" root@127.0.0.1
	echo "da gui mail cho he thong"
fi


