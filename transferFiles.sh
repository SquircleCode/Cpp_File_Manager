#!/bin/bash
# Cpp File Manager

cd ~
#Creates temporary files to store names
	touch ~/cpp_file_manager/FileName.txt
	touch ~/cpp_file_manager/FolderName.txt

#Gets the repository name. Reads and stores the value in a variable
	file="./cpp_file_manager/RepositoryName.txt"
	while IFS= read -r line
	do
	       #stores the data into the variable
		RepositoryName="$line"
	done <"$file"

#Asks if the user wants to copy a file or a folder
	echo "Do you want to transfer a file or a folder"
	read Response
	#if its a file
		if [ $Response == "file" ]
		then
			#finds the required file by runing the findFile script	
				bash ~/cpp_file_manager/findFile.sh
			#FileName
				# gets the temp name file's path
					file="./cpp_file_manager/FileName.txt"
				#reads and stores the value in a variable
					while IFS= read -r line
					do
					       #stores the data into the variable
						FileName="$line"
					done <"$file"

			#gets the temp name file's path
					file="./cpp_file_manager/FolderName.txt"
				#reads and stores the value in a variable
					while IFS= read -r line
					do
					       #stores the data into the variable
						FolderName="$line"
					done <"$file"
			#sets the source directory's location
				SOURCE="./$FolderName/$FileName"
	#if its a folder
		elif [ $Response == "folder" ]
		then
		#gets lab number for the folder name	
			echo "Enter Lab Number : "
			read LAB_NO
		# types the folder name in required format and stores it
			FolderName="lab$LAB_NO"
			SOURCE="./$FolderName/"
	#bad response
		else
			echo "Invalid Response. Try again"
			bash ~/cpp_file_manager/transferFiles.sh
		fi

#Copies the files to the gitHub clone
	DESTINATION="./CS_141_GitHub/$RepositoryName"
	cp -r "$SOURCE"* "$DESTINATION"

#Deletes the temporary files
	rm ~/cpp_file_manager/FolderName.txt
	rm ~/cpp_file_manager/FileName.txt
