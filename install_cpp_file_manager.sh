#!/bin/bash
cd ~
echo "Cpp File Manager for lab assignmets. Created by SaiKrishna."
echo "NOTE: Copy all the downloaded files to the Home directory and then run this"
echo "Enter yes or y  to install and no or n to abort"
read Response1
if [ $Response1=="yes" || $Response1=="y" || $Response1=="Y" || $Response1=="Yes" || $Response1=="YES" ]
then
	#checks for files
	if [ -e ~/fileMaker.cpp && -e ~/findFile.sh && -e ~/openFile.sh && -e ~/runFile.sh && -e ~/transferFiles.sh && -e ~/uploadFile.sh  ]
	then
		#transfers the files		
		mkdir cpp_file_manager
		echo "Transferring files..."
		mv ~/fileMaker.cpp ~/cpp_file_manager/fileMaker.cpp
		mv ~/findFile.sh ~/cpp_file_manager/findFile.sh
		mv ~/openFile.sh ~/cpp_file_manager/openFile.sh
		mv ~/runFile.sh ~/cpp_file_manager/runFile.sh
		mv ~/transferFiles.sh ~/cpp_file_manager/transferFiles.sh
		mv ~/uploadFile.sh ~/cpp_file_manager/uploadFile.sh
		echo "Transfer Completed"
		echo "Please refer the readme to create terminal Shortcuts."


		# For GitHub

		# cloning repository
		echo "Copy and Paste your GitHub Repository(empty)(refer readme) .link here (enter na to do it later) : "
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

		# storing repository name		
		touch ~/cpp_file_manager/repositorName.txt 
		echo "Enter your repository name (case sensitive)"
		read Response3
		echo $Response2 >> ~/cpp_file_manager/repositorName.txt
		
	else
		echo "ERROR - FILES MISSING: Please Download all the files and place them in the Home directory. Refer readme"
	fi
elif [ $Response1=="no" || $Response1=="n" || $Response1=="N" || $Response1=="No" || $Response1=="NO" ]
then
	echo "Bye!!0"
else
	echo "ERROR INVALID RESPONSE. TRY AGAIN!"

fi
	

			
		
	

