#!/bin/bash
# tim so sinh vien co so dien thoai co 10 so, so bat dau la 0122
#dau tien ta liet ke cac sinh vien co so bat dau 0122 va
#sau do moi kiem tra so dien thoai nay la 10 so hay khong

kq=$(cat sinhvien.txt | cut -f2 | grep "^0122")
tong=0
for i in $kq
do
	chieudai=$(echo $i | wc -m)
	if ((chieudai == 11)); then #so sanh voi 11 vi ket thuc cua 1 chuoi co ki tu NULL
		((tong++))
	fi
done
echo "So sinh vien co so dien thoai co 10 so bat dau bang 0122 la: $tong"

