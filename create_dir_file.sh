#!/bin/bash

mkdir new_directory
cd new_directory

echo "Hello! created a dir & file by bash script" \
> new_textfile.txt

ls -ltr
cat new_textfile.txt

sleep 3
echo "Thanks for watching this demo!"  
