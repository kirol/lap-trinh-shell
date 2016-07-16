#!/bin/bash
#Gan bien Global_VAR="My shell" tai shell. Viet script in ra cac gia tri nay. Lam sao gia tri trong script 
# va ngoai shell co gia tri nhu nhau?
# De bien trong script va ngoai shell co gia tri nhu nhau ta dung lenh :export
Global_VAR="My Shell"
export Global_VAR
env | grep Global_VAR
