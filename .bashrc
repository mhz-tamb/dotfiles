# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
if [[ -f /etc/profile.d/bash-completion.sh ]]; then
  source /etc/profile.d/bash-completion.sh
fi

if [[ -f /usr/share/powerline/bash/powerline.sh ]]; then
    source /usr/share/powerline/bash/powerline.sh
fi

alias vim='/usr/bin/vim --servername MASTER'
