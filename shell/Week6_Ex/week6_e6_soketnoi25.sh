#!/bin/bash
# dem so may dang ket noi den port 25 cua server, sap xep cac dia chi cac may theo thu tu
echo "So ket noi den port 25 cua server: "
netstat -ntp 2> /dev/null | grep ":25" | awk '{print $5}'| sort -n
