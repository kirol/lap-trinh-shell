#!/bin/bash
read -p "Nhap vao so can kiem tra" a
s=0
for i in $(seq 1 $a)
do
	if [ $(($a%$i)) -eq 0 ]
	then
	let s+=1    /* s la so lan ma` chia duoc thanh cong 
	fi
done
if [ $s -eq 2 ]
then
	echo $a la so nguyen to
else
	echo $a khong la so nguyen to
fi



So nguyen to la so chi chia het cho 1 va chinh no