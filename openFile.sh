#!/bin/bash
#Cpp File Manager

cd ~
#Creates temporary files to store names
	touch ~/.cpp_file_manager/FileName.txt
	touch ~/.cpp_file_manager/FolderName.txt

#Finds the required file by runing the findFile script
	bash ~/.cpp_file_manager/findFile.sh

#FileName
	#gets the temp name file's path
		file="./.cpp_file_manager/FileName.txt"
	#reads and stores the value in a variable
		while IFS= read -r line
		do
		       #stores the data into the variable
			FileName="$line"
		done <"$file"

#FolderName
	# gets the temp name file's path
		file="./.cpp_file_manager/FolderName.txt"
	#reads and stores the value in a variable
		while IFS= read -r line
		do
		       #stores the data into the variable
			FolderName="$line"
		done <"$file"

#Opens the file in the graphical editor
	gedit ~/$FolderName/$FileName.cpp

#Deletes the temporary files
	rm ~/.cpp_file_manager/FolderName.txt
	rm ~/.cpp_file_manager/FileName.txt
