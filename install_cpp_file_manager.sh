#!/bin/bash
#Cpp File Manager

cd ~
#Instructions
	echo "Cpp File Manager for lab assignmets. Created by SaiKrishna."
	echo "NOTE: Copy all the downloaded files to the Home directory and then run this"
	echo "Please refer the Readme.md for detailed instructions"
	echo "Please wait..."
	sleep 5

#Checks if all the files exist in the home directory
	if [ -e ~/fileMaker.cpp ] && [ -e ~/findFile.sh ] && [ -e ~/openFile.sh ] && [ -e ~/runFile.sh ] && [ -e ~/transferFiles.sh ] && [ -e ~/uploadFile.sh ]
	then
	#Creates the mother directory and transfers files		
		mkdir cpp_file_manager
		echo "Transferring files..."
		mv ~/fileMaker.cpp ~/cpp_file_manager/fileMaker.cpp
		mv ~/findFile.sh ~/cpp_file_manager/findFile.sh
		mv ~/openFile.sh ~/cpp_file_manager/openFile.sh
		mv ~/runFile.sh ~/cpp_file_manager/runFile.sh
		mv ~/transferFiles.sh ~/cpp_file_manager/transferFiles.sh
		mv ~/uploadFile.sh ~/cpp_file_manager/uploadFile.sh
		mv ~/README.md ~/cpp_file_manager/README.md
		echo "Transfer Completed"
		
	#For GitHub
		#Clones the GitHub Repository
			echo "Copy and Paste your GitHub Repository(refer readme) link here (Enter 'na' to do it later) : "
			read Response2			
			if [ ! $Response2 == "na" ]
			then
				touch  ~/cpp_file_manager/GitHub_repository.txt
				echo $Response2 >> ~/cpp_file_manager/GitHub_repository.txt
			fi
			mkdir CS_141_GitHub
			cd ~/CS_141_GitHub
			git clone $Response2
			cd ~

		#Stores the repository name for use in the future		
			touch ~/cpp_file_manager/RepositoryName.txt 
			echo "Enter your repository name (case sensitive)"
			read Response3
			echo $Response3 >> ~/cpp_file_manager/RepositoryName.txt

		echo "Installation complete. If there were any errors refer readme or contact me (SaiKrishna)."
		echo "Thanks for using Cpp File Manager"
	else
		echo "ERROR - FILES MISSING: Please Download all the files and place them in the Home directory. Refer Readme."
		echo "Thanks for trying to use Cpp File Manager"
	fi

#Deletes the Installation files
rm ~/install_cpp_file_manager.sh
	

			
		
	

