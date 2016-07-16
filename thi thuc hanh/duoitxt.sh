#!/bin/bash
read -p "Nhap vao ten thu muc can kiem tra" a
read -p "Nhap vao ten duoi can kiem tra" b
echo "Ten cac duoi file do la"
find $a -type f -name "*.$b"
mkdir /root/Desktop/test
find $a -type f -name "*.$b" -exec cp {} /root/Desktop/test \;
echo "Dung luong cac file do la"
a=$(ls -l /root/Desktop/test | awk '{sum+=$5} END {print sum}')
echo $a
rm -rf /root/Desktop/test
