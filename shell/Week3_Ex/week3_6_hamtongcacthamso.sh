#!/bin/bash
# Viet script su dung ham tinh tong cac tham so
# su dung $# de tim tong cac tham so nhap vao
# su dung shift de dich qua phai cac tham so
# su dung (( )) de thuc hien tinh toan trong shell
sum=0
#dinh nghia ham tinh tong cac tham so
#tham so $# trong ham tongcacthamso khac voi $# cua chuong trinh
function tongcacthamso
{
	for i in `seq 1 $#`
	do
		((sum = $sum + $1))
		shift
	done
	return $sum
}

#goi ham de tinh tong cac tham so
tongcacthamso $(echo $@)
echo "Tong cac tham so dau vao la: $sum"
