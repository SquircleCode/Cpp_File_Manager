#!/bin/bash
cd ~
# Cpp File Manager
#RepositoryPath
	# gets the temp name file's path
	cd ~
	file="./cpp_file_manager/GitHub_repository.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		RepositoryPath="$line"
	done <"$file"
#RepositoryName
	# gets the temp name file's path
	cd ~
	file="./cpp_file_manager/RepositoryName.txt"
	#reads and stores the value in a variable
	while IFS= read -r line
	do
	       #stores the data into the variable
		RepositoryName="$line"
	done <"$file"


#Uploads the file to github
cd ~/CS_141_GitHub/$RepositoryName
git init
git add .
git commit -m "Uploaded using cpp_file_manager. Created by SaiKrishna"
git remote add origin #RepositoryPath
git push -u origin master


