#!/bin/bash
# Tinh tong so file co the thuc thi trong mot thu muc voi ten thu muc duoc nhap tu nguoi dung
read -p "Nhap duong dan thu muc: " thumuc
tong=0
if [ -d $thumuc ]; then
	tong=$(find $thumuc/* -type f -perm +111 2> /dev/null | wc -l)
	echo "So file co the thuc thi trong thu muc \"$thumuc\" la: $tong"
else
	echo "Thu muc \"$thumuc\" khong ton tai"
fi
