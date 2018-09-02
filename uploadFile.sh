#!/bin/bash

#creates Temporary name files
touch ~/cpp_file_manager/FileName.txt
touch ~/cpp_file_manager/FolderName.txt

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

#FolderName
	# gets the temp name file's path
	file="./cpp_file_manager/FolderName.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		FolderName="$line"
	done <"$file"


#Uploads the file to github
cp ~/$FolderName/$FileName.cpp ~/CS_141_GitHub/CS-141-SEM1/$FileName.cpp
cd ~/CS_141_GitHub/CS-141-SEM1
git init
git add .
git commit -m "Uploader $FileName using shell script"
git remote add origin "https://github.com/SquircleCode/CS-141-SEM1"
git push -u origin master

#deletes the temporary name files
rm ~/cpp_file_manager/FileName.txt
rm ~/cpp_file_manager/FolderName.txt


