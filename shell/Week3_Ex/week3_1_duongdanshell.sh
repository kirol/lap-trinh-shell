#!/bin/bash
# Tim tat ca duong dan cua shell hien tai. Tao mot file script o mot duong dan bat ky.
# thay doi duong dan sao cho ta co the thuc hi script nay du dang o bat ki duong dan nao.
# Lam sao de dieu nay van khong thay doi khi tao 1 terminal moi.

# De liet ke tat ca duong dan cua shell hien tai ta dung lenh $PATH
echo "Duong dan cua shell hien tai $PATH"

# Tao thu mot script voi noi dung sau
echo "echo \"dai hoc hoa sen\"" > /root/hs.sh
chmod +x /root/hs.sh

# De thuc thi file hs.sh o bat ki duong dan nao ta them shell trong $PATH
export PATH=$PATH:/root/
#Thay doi duong dan chay thu lenh hs
cd 
hs

# Cach tren chi ap dung cho terminal hien tai, neu tat terminal di se khong thuc thi duoc lenh hs
# De thuc hien lenh hs khi tao mot terminal moi ta phai chinh $PATH trong ~/.bashrc
# hoac trong /etc/profile them vao dong PATH=$PATH:/root/





./new_script
This command line tells the shell exactly where to find the shell script, new_script, in your current directory knows as "dot."
PATH=/usr:/bin/:usr/local/bin:.

This is a very important environment variable. This sets the path that the shell would be looking at when it has to execute any program. It would search in all the directories that are present in the above line. Remember that entries are separated by a ' : ' . You can add any number of directories to this list. The above 3 directories entered is just an example.

PATH =/newdirectory

This would replace the current PATH value with the new value only. What you would want is to append the new directory to the existing PATH value. For that to happen you should type

PATH=$PATH:/newdirectory

This would add the new directory to the existing PATH value. Always a $VARIABLE is substituted with the current value of the variable.

vi hs.sh
#!/bin/bash
echo "Welcome to DHHS"

PATH=$PATH:/root/

cd ..
hs.sh

# Cach tren chi ap dung cho terminal hien tai, neu tat terminal di se khong thuc thi duoc lenh hs
# De thuc hien lenh hs khi tao mot terminal moi ta phai chinh $PATH trong ~/.bashrc , chinh trong ta tat terminal roi mo mot terminal moi de thu nghiem
# hoac To add it to all users except user root, add it to /etc/profile them vao dong PATH=$PATH:/root/, no chi co tac dung khi tat roi mo lai terminal 


