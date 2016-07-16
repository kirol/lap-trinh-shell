#!/bin/bash
# kiem tra so dien thoai cua user nhap vap co dung theo quy uoc 38-1234567
# dau tien kiem tra co dung voi 38- roi moi kiem tra 10 so

i=1
while [ 1 ]
do
	read -p "Nhap vao so dien thoai cua User $i: " user
	if [ $(echo $user | grep "^38-") ]; then
		if [ "$(echo $user | wc -m)" == "11" ]; then 
			 echo "Nhap dung!"
			((i++))
		else
			echo "Nhap sai!"
		fi
	else
		echo "Nhap sai!"
	fi

	read -p "Ban co muon nhap tiep khong?(y/n): " answer
	if [ "$answer" == "y" ];then
		continue
	else
		break
	fi
done
