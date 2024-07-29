#!/bin/bash
echo
while true;
do
	echo " username "
	read username
	if sudo grep -q ^ $username; /etc/passwd;
	then
		echo " user exists "

	else
		sudo useradd $username
		echo " user added succesfully "
		break
	fi
done
echo
echo " enter password "
passwd $username
echo

