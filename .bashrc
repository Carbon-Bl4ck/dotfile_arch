#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias n='neofetch'
alias redyt='~/shellscripts/redyt.sh'
alias wttr='curl wttr.in/cork'
alias p='sudo pacman'
alias sxiv='devour sxiv'
alias zathura='devour zathura'
alias emacs='devour emacs'
alias ani='~/ani-cli/ani-cli'
alias d='~/shellscripts/dmen'
alias manga='devour sxiv $(ls | sort -V)'
alias r='ranger'
alias covid='curl -L covid19-cli.wareneutron.com/Ireland'
alias rand='wal -i ~/Pictures && pywalfox update'

URXVT_INSTANCES=0
for pid in $(pidof -x urxvt); do
	URXVT_INSTANCES=$((URXVT_INSTANCES+1))
done

if [ $URXVT_INSTANCES -eq 1 ]; then
	neofetch
fi

. "${HOME}/.cache/wal/colors.sh"

alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'


