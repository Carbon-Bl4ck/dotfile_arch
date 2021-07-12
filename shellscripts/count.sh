count=$(curl https://nagatoromanga.com/manga/please-dont-bully-me-nagatoro-chapter-85/ | pup 'img attr{src}' | wc -l )

if [ "$count" -lt 15 ]; then 
	echo -e "\e[0;31m Chapter not released yet\e[0m"
fi
