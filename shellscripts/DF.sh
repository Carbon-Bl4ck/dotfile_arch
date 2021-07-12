curl -H "User-agent: 'your bot 0.1'" https://www.reddit.com/r/SFWdeepfakes.json | jq '.' | grep url_overridden_by_dest | grep -Eo "https://.*" >> clips.txt

youtube-dl -a clips.txt
