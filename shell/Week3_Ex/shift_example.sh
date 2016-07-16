#!/bin/bash
# Vi du su dung shift
count=0
number=$#
while [ $count -lt $number ]
do
	count=`expr $count + 1`
	token='$'$count
	echo "count: $count"
	echo "token: $token"
	shift
done
echo "count sau cung: $count"
echo "token sau cung: $token"
