#!/bin/bash
echo
echo " enter a directory"
read directory
echo
find $directory -maxdepth 1 -type f | wc -l

