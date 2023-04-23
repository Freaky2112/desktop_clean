#!/bin/bash

# Variables
errorlog=~/updater_error.log
update="     >>>>   Checking for Update in Progess Please Wait .... <<<< "


# Fucntions check error code 
checkexit() {
		if [ $? -ne 0 ]
		then
		    echo "An error occurred, please check the $errorlog file."
		else
		    echo "Update run without any issue System is Fully Patch Have a Nice Day :) 🤟🤟🤟"
		fi
}


## Upgarde Distro Scripts

if [ -d /etc/pacman.d ]
then
	## Run the Arch version Update command
    echo $update
    echo
	sudo pacman -Syu 1>/dev/null 2>>$errorlog
	checkexit
fi


if [ -d /etc/apt ]
then
	## Run the Debian version Update Upgrade and Snapupgrade command
	echo $update
    echo
	sudo apt update 1>/dev/null 2>>$errorlog
	checkexit
	
	sudo apt dist-upgrade -y 1>/dev/null 2>>$errorlog
	checkexit
	
	sudo snap refresh 1>/dev/null 2>>$errorlog
	checkexit
fi

if [ -d /etc/yum ]
then
	## Run the Centos version Update command
    echo $update
    echo	
	sudo yum update -y 1>/dev/null 2>>$errorlog
	checkexit
fi



