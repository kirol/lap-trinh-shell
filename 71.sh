#!/bin/bash
echo "Nhap tuy chon"
echo "1 - Tim kiem va in ra thong tin tat ca user"
echo "2 - Them user vao file du lieu, neu trung thi thong bao"
echo "3 - Xoa 1 user trong file du lieu"
echo -e "Ban chon: \c"
read n
echo "_______________________________"
if [ $n -eq 1 ]; then
   echo "***Option 1***"
   echo -e "Nhap ten user can tim thong tin: \c"
   read user
   echo ""
   echo "Ket qua tra ve la:"
   grep $user sv.txt
elif [ $n -eq 2 ]; then
   echo "***Option 2***"
   echo -e "Nhap ten: \c"
   read ten
   cat sv.txt | tail -n +2 | awk '{print $1}' > we.txt
   abc=$(grep $ten we.txt | uniq -c | awk '{print $1}') 
   if [ $abc -ge 1 ]; then
   echo "Trung ten"
   else
   echo -e "Nhap so dien thoai: \c"
   read sdt
   echo -e "Nhap email: \c"
   read e
   echo "$ten	$sdt	$e" >> sv.txt
   fi
else 
   echo "***Option 3***"
   echo -e "Nhap ten user muon xoa ra khoi danh sach: \c"
   read del
   grep -v $del sv.txt > snhvien.txt
   rm -f sv.txt
   cp sinhvien.txt sv.txt
fi

