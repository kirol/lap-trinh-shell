#!/bin/bash
read -p "Nhap vao duong dan cua thu muc: " thumuc
if [ -d $thumuc ]; then
        echo -e "Dung luong cua thu muc $thumuc la: \c"
        du -sh $thumuc 2> /dev/null | cut -f1
else
        echo "Thu muc $thumuc khong ton tai hoac $thumuc la mot file!"
fi
