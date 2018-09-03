#!/bin/bash
cd ~
# Cpp File Manager
#creates Temporary name files
touch ~/cpp_file_manager/FileName.txt
touch ~/cpp_file_manager/FolderName.txt

#finds the required file. runs a script
bash ~/cpp_file_manager/findFile.sh


#FileName
	# gets the temp name file's path
	cd ~
	file="./cpp_file_manager/FileName.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		FileName="$line"
	done <"$file"

#FolderName
	# gets the temp name file's path
	cd ~
	file="./cpp_file_manager/FolderName.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		FolderName="$line"
	done <"$file"


#compiles and runs the file
g++ ~/$FolderName/$FileName.cpp
~/a.out

#deletes the temporary name files
rm ~/cpp_file_manager/FileName.txt
rm ~/cpp_file_manager/FolderName.txt
