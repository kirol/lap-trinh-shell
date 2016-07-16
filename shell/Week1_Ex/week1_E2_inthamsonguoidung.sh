#!/bin/bash
#2. Viet chuong trinh in ra cac tham so cua nguoi dung khi chay script
echo -e "Nhap ten nguoi dung: \c"
read u
if [ "grep $u /etc/passwd > /dev/null" ]
then
{
	echo "Thong so cua $u:"
	finger $u
}
else
	echo "User $u khong ton tai"
fi
