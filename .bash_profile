#
# ~/.bash_profile
#

export GDK_SCALE=2

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	eval "$(ssh-agent -s)"
   	ssh-add ~/.ssh/id_rsa
	exec startx
fi

