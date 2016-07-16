#!/bin/bash
#Chuong trinh hoi hom nay co phai la ngay sinh nhat cua ban khong
#Nguoi dung lua chon mot trong cac lua chon Yes No Quit
PS3="Is today your birthday?"
echo -e "Menu"
select menu in Yes No Quit
do
	case $menu in
	Yes) 
		echo -e "\nHappy Birthday!\n" ;;
	No) 
		echo -e "\nIt is some's birthday to day!\n" ;;
	Quit) 
		echo -e "\nLater later!\n"
		break ;;
	*)
		echo -e "\nInvalid Answer...Please try again\n" ;;
	esac
done
