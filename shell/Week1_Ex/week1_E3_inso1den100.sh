#!/bin/bash
#3. tao mot ham in ra mang hinh so 1,2,3...100
echo "Day tu 1-100"
inday()
{
	for i in $(seq 1 100)
	do
		echo -e "$i \c"
	done
}

inday

