#!/bin/bash
#Cpp File Manager
pwd=$(pwd)	
cd ~	
#Instructions
	echo "Cpp File Manager for lab assignmets. Created by SaiKrishna."
	echo "Please refer the Readme.md for detailed instructions"

#Checks if all the files exist in the home directory
	if [ -e $pwd/fileMaker.cpp ] && [ -e $pwd/findFile.sh ] && [ -e $pwd/openFile.sh ] && [ -e $pwd/runFile.sh ] && [ -e $pwd/transferFiles.sh ] && [ -e $pwd/uploadFile.sh ]
	then
		echo "Please wait..."
		sleep 4
	#Creates the mother directory and transfers files		
		mkdir ~/.cpp_file_manager
		echo "Transferring files..."
		mv $pwd/fileMaker.cpp ~/.cpp_file_manager/fileMaker.cpp
		mv $pwd/findFile.sh ~/.cpp_file_manager/findFile.sh
		mv $pwd/openFile.sh ~/.cpp_file_manager/openFile.sh
		mv $pwd/runFile.sh ~/.cpp_file_manager/runFile.sh
		mv $pwd/transferFiles.sh ~/.cpp_file_manager/transferFiles.sh
		mv $pwd/uploadFile.sh ~/.cpp_file_manager/uploadFile.sh
		mv $pwd/README.md ~/.cpp_file_manager/README.md		
		echo "Transfer Completed"
		
	#For GitHub
		#Clones the GitHub Repository
			echo "Copy and Paste your GitHub Repositorylink here (Enter 'na' to do it later) : "
			read Response2			
			if [ ! $Response2 == "na" ]
			then
				touch  ~/.cpp_file_manager/GitHub_repository.txt
				echo $Response2 >> ~/.cpp_file_manager/GitHub_repository.txt
				mkdir ~/.CS_141_GitHub
				cd ~/.CS_141_GitHub
				git clone $Response2
				cd ~
			#Stores the repository name for use in the future		
				touch ~/.cpp_file_manager/RepositoryName.txt 
				echo "Enter your repository name (case sensitive)"
				read Response3
				echo $Response3 >> ~/.cpp_file_manager/RepositoryName.txt
			fi
		
		#Writes the aliases
		echo 'Entering aliases into .bashrc...'
		#sleep 2
		echo "alias op='bash ~/.cpp_file_manager/openFile.sh'" >> ~/.bashrc
		echo "alias rf='bash ~/.cpp_file_manager/runFile.sh'" >> ~/.bashrc
		echo "alias tf='bash ~/.cpp_file_manager/transferFiles.sh'" >> ~/.bashrc
		echo "alias up='bash ~/.cpp_file_manager/uploadFile.sh'" >> ~/.bashrc
		echo "aliases Updated."		

		echo "Installation complete. Restart Terminal to start using it."
		echo "If there were any errors refer readme or contact me (SaiKrishna)."
		sleep 3
		echo "Thanks for using Cpp File Manager"
		#deletes the installation file
		rm $pwd	
	else
		echo "ERROR - FILES MISSING: Please Download all the files. Refer Readme."
		echo "Thanks for trying to use Cpp File Manager"
	fi


	

			
		
	

