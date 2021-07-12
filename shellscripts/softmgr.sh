#!/bin/bash

. "${HOME}/.cache/wal/colors.sh"

action=$(echo -e "Install Program\nRemove Program\nRemove Waste\nUpdate System" | dmenu -nb "$color0" -sb "$color1" -p "Software Manager: " -i)

case $action in 
  "Install Program")
    package=$(pacman -Si |
      awk '/^Name/{name=$3} /^Download Size/{ds=$4$5} /^Repo/{repo=$3} /^Description/{sub(/^.{18}/,"", $0); print name, "["ds"]", "("repo") =>", $0} ' |
      sort -d | rofi -dmenu -i -l 20 | awk '{print $1}')

    sudo pacman -S --noconfirm $package
    notify-send "😎🎊 $package is installed ✨"
    ;;
  "Remove Program")
    package=$(pacman -Qi |
      awk '/^Name/{name=$3} /^Installed Size/{ds=$4$5} /^Repo/{repo=$3} /^Description/{sub(/^.{18}/,"", $0); print name, "["ds"] =>", $0} ' |
      sort -d | rofi -dmenu -i -l 25 | awk '{print $1}')
    sudo pacman -R --noconfirm $package
    notify-send "😈 $package is removed 😥"
    ;;
  "Remove Waste")
    sudo pacman -Rs $(pacman -Qqtd)
    notify-send "☠️  Orphan packages deleted 😵"
    ;;
  "Update System")
    sudo pacman -Syu --noconfirm
    notify-send "✨🎉🥳 System Update Complete"
    ;;
  *)
    notify-send "😕 No Option Selected"
    ;;
esac
