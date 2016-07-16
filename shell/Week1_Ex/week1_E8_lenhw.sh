#!/bin/bash
#8. Dung lenh w de xem ai dang login vao he thong
echo "lenh w dung de xem ai dang login vao he thong va dang lam gi"
echo "ngoai ra con co cac lenh gan giong w nhu who "
echo "cac option:"
echo "usage: w -hlsufV [user]
    -h    skip header
    -l    long listing (default)
    -s    short listing
    -u    ignore uid of processes
    -f    toggle FROM field (default on)
    -V    display version"
echo "vi du:"
echo "[censrv@censrv ~]$ w -h
censrv   tty1     :0               05:32    2:03m  5.68s  0.09s pam: gdm-passwo
censrv   pts/0    :0.0             05:32    2:01m  0.02s  0.02s bash
censrv   pts/1    192.168.159.1    07:10   35.00s  0.04s  0.01s vi ./Week1_Ex/w
censrv   pts/2    192.168.159.1    07:09    5:11   0.06s  0.00s man w
censrv   pts/3    192.168.159.1    07:30    0.00s  0.05s  0.01s w -h"
