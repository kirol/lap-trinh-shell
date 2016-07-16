#!/bin/bash
# tinh tong cac tham so trong script. kiem tra chuong trinh van chay dung khi tham so >=10
sum=0
for i in `seq 1 $#`
do
	((sum = $sum + $1))
	shift
done
echo "Tong cac tham so dau vao la: $sum"
