#!/bin/bash
ssh root@192.168.1.3 ' netstat -atp ' > /root/Desktop/mail
skn=$(cat /root/Desktop/mail | grep smtp | wc -l)
echo -e "so ket noi toi mailserver : $skn"
if [ $skn -gt 3 ] 
then
echo "Co $skn ket noi toi server" | mail -s "Luu y" root@localhost.localdomain
fi
