#!/bin/bash
#4. Tạo một file text tên các sinh viên, năm sinh, quê quán, chuyên ngành. Viết đoạn script in các sinh viên có tên bất kỳ, và đếm số sv có cùng tên.
# File sinh vien da duoc tao san
read -p "Nhap ten sinh vien can tim: " sv
grep -i $sv sinhvien.txt > /dev/null
if [ $? == 0 ]; then
echo "Danh sach sinh vien co ten: \"$sv\""
head -n 1 sinhvien.txt
grep -i $sv sinhvien.txt

echo -e "\nSo sinh vien co cung ten \"$sv\" la: \c"
grep -i $sv sinhvien.txt | wc -l
else
	echo "Khong co sinh vien \"$sv\" trong danh sach"
fi
