#!/bin/bash

#Uploads the file to github
cd ~/CS_141_GitHub/CS-141-SEM1
git init
git add .
git commit -m "Uploaded using shell script"
git remote add origin "https://github.com/SquircleCode/CS-141-SEM1"
git push -u origin master


