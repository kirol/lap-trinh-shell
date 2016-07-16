#!/bin/bash
# thong ke so file va tong kich thuoc cac file cua tung user trong thu muc
read -p "Nhap vao duong dan thu muc: " thumuc
if [ -d $thumuc ]; then
	#thuc hien lay ten cua user
	listuser=$(ls -l $thumuc | awk '{print $3}'| tail -n +2 | uniq)
	for i in $listuser
	do
		#lay so file cua user
		sofile=$(ls -l $thumuc | grep $i | wc -l)

		#thuc hien cong cac file cua user
		tongkichthuoc=0
		for j in $(ls -l $thumuc | grep $i | awk '{print $5}')
		do
			((tongkichthuoc = tongkichthuoc + j)) 
		done
		echo "Tong so file cua user $i la: $sofile"
		echo -e "Tong kich thuoc cac file cua user $i la: $tongkichthuoc byte \n"
	done
else
	echo "$thumuc khong phai la thu muc hoac thu muc khong ton tai"
fi
