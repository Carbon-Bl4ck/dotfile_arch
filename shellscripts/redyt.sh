#!/bin/bash

configdir="$HOME/.config/"

if [ -z "$1" ]; then
	subreddit=$(dmenu -nb '#2E3440' -sb '#dd92f6' -p "Select Subreddit r/" -i -l 10 < "$configdir/subreddit.txt" | cut -d\| -f1 | awk '{$1=$1;print}')

	[ -z "$subreddit" ] && exit 1
else 
	subreddit=$1
fi

dir="$HOME/reddit/photos/$subreddit"

wget -nc -P $dir $(curl -H "User-agent: 'your bot 0.1'" https://www.reddit.com/r/$subreddit.json | jq '.' | grep url_overridden_by_dest | grep -Eo "https://.*(jpg|png)\b") && sxiv $dir/*


