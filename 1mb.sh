#!/bin/bash
echo " files bigger than 1MB"
find . -type f -size +1M -exec ls -lh {} \;



