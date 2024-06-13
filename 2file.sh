#!/bin/bash
echo
echo " give 2 files to see any identical in both "
echo
echo " name the first file "
read a
echo " name the second file "
read b
echo
cmp $a $b 
if [ $? -eq 0 ]; then  
	echo " both are same"
else
	echo " both are different "
fi





