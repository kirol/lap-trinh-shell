#!/bin/bash
# dem so ket noi dang ket noi den port 80 cua server ( may hien tai hoac server ma ta dang ket noi
soketnoi=$(netstat -ntp 2> /dev/null | awk '{print $4}' | grep ":80" | wc -l)
echo "So ket noi dang ket noi den port 80 cua server: $soketnoi"
