#!/bin/bash
echo
echo " path to file "                                   # shell script for finding file path , owneer , group , current file permissions , new permissions and to display updated permissions
read path
echo
echo " owner & group & current permissions "
ls -l path
echo
echo " owner permission "
read ownerpermission
echo 
echo " group permission "
read grouppermission
echo
echo " everyone's peremission "
read everyone permission
echo
string = $ownerpermission$grouppermission$everyonepermission
chmod $string $path
echo
echo " displaying updated permissions "
ls -l path
echo

