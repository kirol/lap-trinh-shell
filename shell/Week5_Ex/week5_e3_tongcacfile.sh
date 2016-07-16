#!/bin/bash
#tinh tong kich thuoc cac file trong 1 thu muc. su dung cut voi ls
read -p "Nhap vao thu muc: " thumuc
if [ -d $thumuc ]; then
	echo -e "Tong cac file trong thu muc \"$thumuc\" la: \c"
	ls -lh "$thumuc" | grep total | cut -f2
else
	echo "Thu muc \"$thumuc\" khong ton tai!"
fi

