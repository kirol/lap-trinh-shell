#!/bin/bash
ssh root@192.168.1.3 ' netstat -atp ' > /root/Desktop/mail
skn=$(cat /root/Desktop/mail | grep http | wc -l)
echo -e "so ket noi toi webserver : $skn"
if [ $skn -gt 3 ] 
then
echo "Co $skn ket noi toi web server" | mail -s "Luu y" root@localhost.localdomain
fi
