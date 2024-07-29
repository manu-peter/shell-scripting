#!/bin/bash
echo
echo " Select option a to create/add a user "
echo " Select option b to modify a user"
echo " Select option c to delete a user"
echo
read -p " Select your option:" option
echo
if [ $option == a ]
	echo " username "
	read username
	if cat /etc/passwd | grep $username^ > /dev/null
	then
		echo " user exists"
	else
		sudo useradd $username
		echo " user addeed succesfully"
	fi
elif [ $option == b ]
then
	while true;
	do
		echo " select option 1 to change shell "
		echo " select option 2 to change directory "
		echo " select option 3 to add user to a group "
		echo " select option 4 to change username "
		echo
		read -p " select your option: " $option
		echo
		if [ $option == 1 ]
			echo " list of the available shells "
			cat /etc/shells
			echo
			echo " provide a username "
			read username
			echo
			echo " choose a suitble shell "
			read shell
			usermod -s $shell $username
			echo " shell changed succesfully "
			echo
		elif [ $option == 2 ]
		then 
			read -p " select username: " username
			echo " select directory "
			read directory
			usermod -d $directory $username
			echo " directory changed succesfully "
			echo
		elif [ $option == 3 ]
		then
			echo " enter username "
			read -p " select username: " username
			echo
			echo " select a group "
			read group
			sudo usermod -aG $group $username
			echo " added succesfully "
			echo
		elif [ $option == 4 ]
		then 
			echo " change the current username "
			read username
			read  -p " newname:" newusername
			sudo usermod -l $newusername $username
			echo 
		else
			echo " wrong option, please provide a valid option "
			break
		fi
		done
elif [ $option == c ]
then
	echo " provide the username which is to be deleted "
	read username
	userdel -f $username
	echo
	echo " user deleted successfully "
	echo
else
		" The option you provide is invalid please provide a valid option and try again "
fi			

