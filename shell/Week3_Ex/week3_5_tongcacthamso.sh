# Viet script tinh tong cac tham so
#!/bin/bash
# su dung $# de tim tong cac tham so nhap vao
# su dung shift de dich qua phai cac tham so
# su dung (( )) de thuc hien tinh toan trong shell
sum=0
for i in `seq 1 $#`
do
	((sum = $sum + $1))
	shift
done
echo "Tong cac tham so dau vao la: $sum"
