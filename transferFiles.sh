#!/bin/bash

#creates Temporary name files
touch ~/cpp_file_manager/FileName.txt
touch ~/cpp_file_manager/FolderName.txt

#finds the required file. runs a script
sh ~/cpp_file_manager/findFile.sh

#FolderName
	# gets the temp name file's path
	file="./cpp_file_manager/FolderName.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		FolderName="$line"
	done <"$file"

SOURCE="./$FolderName"
DESTINATION="./CS_141_GitHub/CS-141-SEM1"

cp -r "$SOURCE/"* "$DESTINATION"
