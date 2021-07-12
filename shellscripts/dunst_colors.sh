#!/bin/sh

#        -lf/nf/cf color
#            Defines the foreground color for low, normal and critical notifications respectively.
# 
#        -lb/nb/cb color
#            Defines the background color for low, normal and critical notifications respectively.
# 
#        -lfr/nfr/cfr color
#            Defines the frame color for low, normal and critical notifications respectively.

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

pidof dunst && killall dunst

dunst -lf  "${color0:-}" \
      -lb  "${color1:-}" \
      -lfr "${color2:-}" \
      -nf  "${color3:-}" \
      -nb  "${color4:-}" \
      -nfr "${color5:-}" \
      -cf  "${color6:-}" \
      -cb  "${color7:-}" \
      -cfr "${color8:-}" > /dev/null 2>&1 &
