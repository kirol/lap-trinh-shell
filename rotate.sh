#!/bin/bash
function rotate
{
so=0.1;i=0;n=14
while true
do
  while [ $n -gt 4 ]
  do
    i=$(($i+1))
    case $i in
    1) echo -e "-\b\c"
       sleep $so;;
    2) echo -e '\\'"\b\c"
       sleep $so;;
    3) echo -e "|\b\c"
       sleep $so;;
    4) echo -e "/\b\c"
       sleep $so;;
    *) echo -e "#\c"
       i=0
       sleep $so
       n=$(($n-1))
    esac
  done
  while [ $n -lt 5 -a $n -gt 0 ]
  do
      echo -e "\b\b\b\b\b\b\b\b\b\b\c"
      n=14
  done
done
}
rotate &
rotate_pid=$!
dienlenhvaoday
kill -9 $rotate_pid

