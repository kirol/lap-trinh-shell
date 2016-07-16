#!/bin/bash
1. Chứng tỏ standard error và standard output là khác nhau. (Hướng dẫn: viết 1 lệnh thực hiện sẽ báo lỗi, đẩy báo lỗi vào 1 file, output ra 1 file khác).
echo "Lenh co thong bao loi va out put: find /home -type f -user root"
find /home -type f -user root 2>./error.txt | tee 1>./output.txt
echo -e "\n Standard Ouput khi thuc hien lenh."
cat ./output.txt
echo -e "\n Standard Error khi thuc hien lenh."
cat ./error.txt
