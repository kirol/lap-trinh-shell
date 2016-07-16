#!/bin/bash
# Viet script xac dinh tat ca cac file co the thuc thi duoc trong cung mot thu muc
read -p "Nhap duong dan thu muc: " thumuc

# Kiem tra thu muc nhap vao co ton tai hay khong
if [ -d $thumuc ];then
	echo "File co quyen thuc thi: "
	for file in $thumuc/*
	do
		#kiem tra neu do la file va co the thuc thi
		if [ -f $file -a -x $file ];then
			echo $file
			echo "Thuc thi file $file"
			$file
		fi
	done
else
	echo "$thumuc khong phai la thu muc hoac thu muc khong ton tai!"
fi





With the help of BASH shell and IF command it is possible to find out if file exists or not.
http://www.cyberciti.biz/tips/find-out-if-directory-exists.html

Neu co loi xay ra thi ta check lai xem da dung PATH=$PATH:/thumuc/ de them vao duong dan chua 