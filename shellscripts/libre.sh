#!/bin/bash

cachedir="/tmp/webpage"

if [ ! -d "$cachedir" ]; then
	echo "$cachedir does not exist, creating..."
	mkdir -p "$cachedir"
fi

curl "$1" > "$cachedir/tmp.html"

devour firefox "$cachedir"/tmp.html

sleep 1

rm "${cachedir:?}"/*


