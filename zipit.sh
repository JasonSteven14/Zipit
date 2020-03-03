#!/bin/bash 

# printf "Please select folder:\n"
# select d in */; do test -n "$d" && break; echo ">>> Invalid Selection"; done
# zip -r prueba.zip $d
# echo "Files added to prueba.zip"

files = ( */ )
for file in " ${files[@]} "; do
    echo "$file"
    zip -r prueba.zip $file
done

# LIST TODO

# 1. install this script o call it on the work folder
# 2. change folder dynamiclly
