#!/bin/bash
# 2. Chứng tỏ sự khác biệt giữa ">" và ">>"
# Su khac biet giua >> va > o cho:
# >> se noi them data vao file
# > se xoa noi dung file cu va chep data vao
echo "Tao file hoasen.txt"
echo "Truong dai hoc Hoa Sen" >hoasen.txt
echo -e "\n Dung >>"
echo "Lo 10 cong vien phan mem quang trung" >>hoasen.txt
cat hoasen.txt
echo -e "\n Dung >"
echo "Mang may tinh">hoasen.txt
cat hoasen.txt
