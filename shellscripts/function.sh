scrape () {
wget -nc -P ~/naga/chapter_86 $(curl https://nagatoromanga.com/manga/please-dont-bully-me-nagatoro-chapter-86/ | pup 'img attr{src}') && sxiv ~/naga/chapter_86/*

notify-send 'Grab a ☕️, Chapter 86 is ready!'
}

count=$(curl https://nagatoromanga.com/manga/please-dont-bully-me-nagatoro-chapter-86/ | pup 'img attr{src}' | wc -l )

if [ "$count" -lt 15 ]; then 
	echo -e "\e[0;31m Chapter not released yet\e[0m"
else
	scrape
fi

