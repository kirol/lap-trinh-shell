#!/bin/bash
while read line
do
	time=`date | cut -d " " -f4 | cut -d ":" -f1`
	user=`echo $line | awk '{print $1}'`
	start=`echo $line | awk '{print $2}'`
	stop=`echo $line | awk '{print $3}'`
	for i in $user
	do
	if (($time >= $start && $time < $stop))
	then
		usermod -U $user
	else
		usermod -L $user
	fi
	done
done < /root/Desktop/timelogin.conf

