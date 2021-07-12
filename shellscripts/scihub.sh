#!/bin/bash

if [ $# -eq 0 ]; then
	echo 'Usage: scihub <URL/DOI>'
	exit 1
fi

paper=$1
PDF=$(curl 'https://sci-hub.st/'$paper'' | pup 'a attr{onclick}' | grep -Eo "//.*true\b" | awk '{print "https:" $0;}')
#echo $PDF
firefox $PDF
