#!/bin/bash

#RepositoryPath
	# gets the temp name file's path
	file="./cpp_file_manager/GitHub_repository.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		RepositoryPath="$line"
	done <"$file"


#Uploads the file to github
cd ~/CS_141_GitHub/CS-141-SEM1
git init
git add .
git commit -m "Uploaded using cpp_file_manager. Created by SaiKrishna"
git remote add origin #RepositoryPath
git push -u origin master


