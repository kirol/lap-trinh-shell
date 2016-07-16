#!/bin/bash
read -p "Nhap vao so phan tu N = " n
mang=0
for i in `seq 1 $n`
do
	read -p "Nhap phan tu thu $i: " phantu
	((mang = $mang + $phantu))
 	
done
echo "Tong cac phan tu trong mang la: $mang"
