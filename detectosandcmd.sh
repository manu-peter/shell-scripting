#!/bin/bash
echo
echo " Detecting command and os kindly provide a package name to be installed "
read package
echo
if command -v dnf > /dev/null; then
	echo " it is a fedora based os "
	sudo dnf install $package
elif command -v apt > /dev/null; then
	echo " its a debian based os "
	sudo apt install $package
else
	echo " This current os is neither debian nor fedora "
fi 
