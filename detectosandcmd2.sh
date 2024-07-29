#!/bin/bash
echo
echo " Provide a requiredd package name to installed "
read package
echo
source /etc/os-release
echo " The operating system is ;$Name "
os=$( awk '{ print$3 }' /etc/os-release | grep fedora | cut -c 1-6 )
if [ $os =fedora ]; then
	echo " os is $os "
	sudo dnf install $package
elif [ $os =ubuntu ]; then
	echo " os is $os "
	sudo apt install $package
else
	echo " no idea??!! "
fi
echo

