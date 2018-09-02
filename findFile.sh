#!/bin/bash
cd ~
# accepts details from user
echo "Enter Lab Number : "
read LAB_NO
echo "Enter Question Number" 
read Q_NO

# types the file name and folder name in required format and stores it
FolderName="lab$LAB_NO"
FileName="lab$LAB_NO""_q$Q_NO"

echo $FileName >> ~/cpp_file_manager/FileName.txt
echo $FolderName >> ~/cpp_file_manager/FolderName.txt

# checks if the folder does not exist
if [ ! -d ~/$FolderName ]
	then #if the folder doesn't it creates it in parent dir	
		mkdir $FolderName
fi

# checks if the file does not exits 
if [ ! -e ~/$FolderName/$FileName.cpp ]
then    # if the file doesn't exist it creates it in the folder. Sort of.
	# copies sample code to the folder 
	cp ~/cpp_file_manager/fileMaker.cpp ~/$FolderName/$FileName.cpp
fi


