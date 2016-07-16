#!/bin/bash
#Viet script in ra tat ca file co the thuc thi duoc trong mot thu muc.
#tao file "my execuable file" trong cung mot thu muc. Chung to co in ra ten file nay.
read -p "Nhap vao duong dan thu muc: " thumuc
if [ -d $thumuc ]; then
	echo "Cac file co the thuc thi trong thu muc $thumuc la:"
	for script in $thumuc/*
	do
		if [ -f "$script" -a -x "$script" ]; then
			echo $(basename $script)
		fi
	done
else
	echo "Thu muc $thumuc khong ton tai!"
fi
