#!/bin/bash
# 4. Copy mot file vao mot thu muc. In dong thong bao khong the copy
# neu co loi va copy thanh cong neu khong co loi
# Dung $? de biet ket qua tra ve cua lenh vua thuc hien
# Neu $? la dung thi thong bao thanh cong va nguoc lai

read -p "Nhap duong dan file can copy: " file
read -p "Nhap duong dan thu muc dich: " thumuc
cp $file $thumuc 2> /dev/null #thong bao loi se duoc loai bo
if (($?));then
	echo "Khong the copy"
else
	echo "Copy thanh cong"
fi


$?=0 thanh cong, $?=1 that bai
if (($?)); then 
echo "That bai"


Ket qua
./cop.sh
Nhap duong dan file can copy
/hs.sh
Nhap duong dan thu muc can copy
/root/test/

Copy thanh cong