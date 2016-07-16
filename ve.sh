#!/bin/bash
#stat don vi tinh la bytes
rm -f ve.txt
uuid=$(cat /etc/passwd | awk -F: '{print $3}')
for i in $uuid
do
  if [ $i -gt 499 -a $i -ne 65534 ]; then
  user=$(grep $i /etc/passwd | awk -F: '{print $1}')
  for j in $user
  do 
  size=$(find / -user $j -type f -exec stat --format %s '{}' \; | awk '{sum +=$1}END{print sum}')
  echo "$j	$size" >> ve.txt
  done
  fi
done
   
  dungluong=$(cat ve.txt | awk '{print $2}')
  for m in $dungluong
  do
    if [ $m -gt 10000 ]; then
      echo "$(grep $m ve.txt)	Overlimit"
    else
      sao=$(($m/100))
      echo -e "$(grep $m ve.txt)	\c"
      for k in $sao
      do 
        while [ $k -gt 0 ]
        do
          echo -e "*\c"
          k=$(($k-1))
        done
      done 
    fi
  echo ""
  done

