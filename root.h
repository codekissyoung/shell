#!/bin/bash
if [ $UID -ne 0 ]; then
	echo "not root user";
else 
	echo "Root User";
fi





