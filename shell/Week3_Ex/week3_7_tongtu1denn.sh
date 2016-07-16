#!/bin/bash
# 7. Viet script tinh tong tu 1 den n, voi n nhap tu ban phim.
# Dung vong lap for de tinh tong.
# Dung (()) de tinh toan trong shell
sum=0
read -p "Nhap vao N: " n
for i in `seq 1 $n`
do
	((sum = $sum + $i))
done
echo "Tong tu 1 den $n la: $sum"
