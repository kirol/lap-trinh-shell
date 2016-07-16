#!/bin/bash
# Tim so sinh vien co ten bat dau bang "Ng" ket thuc bang "t"
kq=$(cat sinhvien.txt | cut -f1 | grep "^Ng" | grep "t$" | wc -l)
echo "So sinh vien co ten bat dau bang \"Ng\" va ket thuc bang \"t\" la: $kq"
