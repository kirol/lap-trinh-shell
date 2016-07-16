#!/bin/bash
#Nhap danh sach cong nhan gon ten cong nhan, tuoi va phong lam viec
#Lap menu in ra thong tin cua mot cong nhan bat ki

chon=y
i=1
until [ "$chon" == "n" ]
do
	read -p "Ten cong nhan $i: " ten
	read -p "Tuoi cong nhan $i: " tuoi
	read -p "Phong lam viec cong nhan $i: " plv
	echo "$ten	$tuoi	$plv" >>congnhan.txt
	read -p "Nhap cong nhan tiep theo? (y/n):" chon
	((i = $i + 1))
done
PS3='Chon cong nhan? '
list="Finished $(cat congnhan.txt | cut -d $'\t' -f1)"
until [ "$chose" == "Finished" ]; do
	echo "List cong nhan:"
	select chose in $list; do
		if [ "$chose" == "Finished" ]; then
			echo "Finished processing!"
			break;
		elif [ -n "$chose" ]; then
			echo  "You chose number $REPLY, processing $chose..."
			grep -w "$chose" congnhan.txt
			break
		else
			echo "Invalid selection!"
		fi
	done

done
