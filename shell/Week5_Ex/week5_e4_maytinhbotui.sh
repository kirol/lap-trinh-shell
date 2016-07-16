#!/bin/bash
#Viet chuong trinh lam may tinh bo tui. Nguoi dung viet bieu thuc, may tinh se tinh
#ket qua cho den khi nguoi dung enter ma khong nhap gia tri nao.
bieuthuc=" " #khoi tao gia tri ban dau de bieuthuc khong rong
until [ ! -n "$bieuthuc" ]; do #thuc hien cho den khi nao bieu thuc rong thi ket thuc
	read -p "Nhap bieu thuc (vidu: a + b): " bieuthuc
	if [ -n "$bieuthuc" ]; then #Neu bieu thuc khong rong thi thuc hien tinh toan
		((kq = $bieuthuc))
		echo "Ket qua cua bieu thuc \"$bieuthuc\" la: $kq"
	else
		echo "Bye! $bieuthuc"
	fi
done
