. "${HOME}/.cache/wal/colors.sh"

pid=$(ps -u $USER -o pid,%mem,%cpu,comm | sort -b -k2 -r | sed -n '1!p' | dmenu -i -l 15 -nb "$color0" -sb "$color1" | awk '{print $1}')
kill -15 $pid 2>/dev/null
notify-send "Process successfully killed"

