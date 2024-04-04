#!/bin/bash

files_dir="/home/workspace/SWE_2021_41_week_5-main/files"
destination_dir="/home/workspace/SWE_2021_41_week_5-main"

for file in "$files_dir"/*.txt; do
    if [ -f "$file" ]; then

	#store the basename of the current file inside the filename variable
        filename=$(basename "$file" .txt)
        first_char=${filename:0:1}

	#pass first_char to tr command to make upper case letter ->lower case
        lowercase_first_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

	#move the file to the corresponding lower case letter 
        mv "$file" "$destination_dir/$lowercase_first_char"
    fi
done

echo "All files successfully moved!"
