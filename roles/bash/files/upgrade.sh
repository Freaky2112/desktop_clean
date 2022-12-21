#!/bin/bash

# Variables
errorlog=~/updater_error.log

# Fucntions check error code 
checkexit() {
		if [ $? -ne 0 ]
		then
		    echo "An error occurred, please check the $errorlog file."
		else
		    echo "Update run without any issue System is Fully Patch Have a Nice Day :)"
		fi
}


## Upgarde Distro Scripts

if [ -d /etc/pacman.d ]
then
	## RUn the Arch version Update command
	sudo pacman -Syu 1>/dev/null 2>>$errorlog
	checkexit
fi


if [ -d /etc/apt ]
then
	## RUn the Debian version Update Upgrade and Snapupgrade command
	sudo apt update 1>/dev/null 2>>$errorlog
	checkexit
	
	sudo apt dist-upgrade -y 1>/dev/null 2>>$errorlog
	checkexit
	
	sudo snap refresh 1>/dev/null 2>>$errorlog
	checkexit
fi

if [ -d /etc/yum ]
then
	## RUn the Centos version Update command
	sudo yum update -y 1>/dev/null 2>>$errorlog
	checkexit
fi



