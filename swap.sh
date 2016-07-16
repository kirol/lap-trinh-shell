

#!/bin/bash
for i in 129 133
do
  ssh root@192.168.146.$i 'hostname' > /root/hostname.txt
  ssh root@192.168.146.$i 'free' > /root/free.txt
  t=$(cat free.txt | tail -n +4 | awk '{print $2}')
  u=$(cat free.txt | tail -n +4 | awk '{print $3}')
  p=$(($u/$t*100))
  if [ $p -eq 0 ]; then
    cat /root/hostname.txt | mail -s "Dung luong swap vuot qua muc quy dinh" root@localhost 
  fi
done 
