#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	eval "$(ssh-agent -s)"
   	ssh-add ~/.ssh/id_rsa
	exec startx
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
