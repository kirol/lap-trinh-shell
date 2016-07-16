#!/bin/bash
#Viet mot script cho phep tinh tong cua 2 tham so. Neu tham so >2, bao loi.
#Viet usage (man) cho chuong trinh nay trong cung 1 shell. Tao ra manual cua file nay 
#tu usage ghi chu trong script. Dung pod2html, pod2man
if [ $# -eq 2 ]; then
	((sum = $1 + $2))
	echo "Tong hai tham so cua Script la: $sum"
else
	echo "Usage: $0 var1 var2"
fi
#Use a: NOOP and here document to embed documentation.
:<<'END_OF_DOCS'
=head1 NAME
Chuong trinh tinh tong hai tham so.
=head1 SYNOPSIS
week4_E2_tinhtong2thamso var1 var2
=head1 OPTIONS
var1 = so thu nhat
var2 = so thu hai
=head1 DESCRIPTTON
day la chuong trinh tinh tong hai tham so 
