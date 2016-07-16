#!/bin/bash
#5. Viết script sử dụng hàm. Script tạo ra một số bất kỳ (dùng biến $RANDOM) cho đến khi người dùng nhập vào "yes".
echo "RANDOM mot so"
answer="y"
while [ $answer == "y" ]
do
	echo $RANDOM
	echo -e "Tiep tuc random so? (y/n) :\c"
	read answer
done
