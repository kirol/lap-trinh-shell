#!/bin/bash
#viet script can co 3 tham so. Nguoi dung nhap it hon thi thong bao it hon,
# neu nhieu hon thi thong bao nhieu hon, neu dung thi in ra tong cua 3 than so do
if [ $# -lt 3 ]; then
	echo "It hon 3 tham so"
elif [ $# -gt 3 ]; then
	echo "Nhieu hon 3 tham so"
else
	((sum = $1 + $2 + $3))
	echo "tong 3 tham so cua chuong trinh: $sum"
fi
				

