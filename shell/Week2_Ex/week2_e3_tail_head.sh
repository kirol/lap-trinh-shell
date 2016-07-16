#!/bin/bash
#3. Dùng lệnh tail/head để:
#   + đọc 3 dòng đầu tiên từ trên xuống của 1 file.
#   + đọc 3 dòng đầu tiên từ dưới lên của 1 file.
#   + đọc 10 dòng đầu tiên từ trên xuống kể từ dòng thứ 3 của 1 file.
echo "tao file in so tu 1 den 20"
for i in `seq 1 20`
do
	echo $i >>"test.txt"
done
echo -e "\n 3 dong dau tien cua file"
head -n 3 "./test.txt"
echo -e "\n 3 dong cuoi cua file"
tail -n 3 "test.txt"
echo -e "\n 10 dong dau tien tu tren xuong ke tu dong thu 3 cua file"
tail -n +3 "test.txt" | head -n 10
