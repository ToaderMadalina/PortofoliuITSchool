#! /bin/bash

dir_to_check=$1

if ls -al $dir_to_check>& /dev/null;then
	echo "Am drept de read pe $dir_to_check"
	exit 0
else
	echo " Nu am drept de read pe $dir_to_check"
	exit 1
fi


