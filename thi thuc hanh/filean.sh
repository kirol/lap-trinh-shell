#!/bin/bash
read -p "Nhap vao ten thu muc" a
find $a -type f | awk -F "/" '{print $NF}' | grep "^\."
b=$(find $a -type f | awk -F "/" '{print $NF}' | grep "^\." | wc -l)
echo "So file an trong thu muc $a la : $b"

