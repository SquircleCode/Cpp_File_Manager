#!/bin/bash

#creates Temporary name files
touch ~/cpp_file_manager/FileName.txt
touch ~/cpp_file_manager/FolderName.txt

#File or folder
echo "Do you want to transfer a file or a folder"
read Response

if [ $Response == "file" ]
then
	#finds the required file. runs a script	
	sh ~/cpp_file_manager/findFile.sh

	#FileName
	# gets the temp name file's path
	file="./cpp_file_manager/FileName.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		FileName="$line"
	done <"$file"

	# gets the temp name file's path
	file="./cpp_file_manager/FolderName.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		FolderName="$line"
	done <"$file"
	SOURCE="./$FolderName/$FileName"

elif [ $Response == "folder" ]
then
	#gets lab number for the folder name	
	echo "Enter Lab Number : "
	read LAB_NO
	# types the folder name in required format and stores it
	FolderName="lab$LAB_NO"
	SOURCE="./$FolderName/"

else
	echo "Invalid Response. Try again"
	uf
fi

DESTINATION="./CS_141_GitHub/CS-141-SEM1"
cp -r "$SOURCE"* "$DESTINATION"
