#!/bin/bash

## Upgarde Distro Scripts

if [ -d /etc/pacman.d ]
then
	## RUn the Arch version Update command
	sudo pacman -Syu
fi


if [ -d /etc/apt ]
then
	## RUn the Debian version Update command
	sudo apt update && sudo apt dist-upgrade -y
fi

if [ -d /etc/yum ]
then
	## RUn the Centos version Update command
	sudo yum update -y
fi



