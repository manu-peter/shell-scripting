#!/bin/bash
echo
echo " enter file path "
read path
echo
echo " enter the word "
read word
echo
grep -o $word $path | wc -l


