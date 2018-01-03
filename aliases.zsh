# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadzsh="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias weather="curl -4 http://wttr.in"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias flushdns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"

# Directories
alias cddotfiles="cd $DOTFILES"
alias cdl="cd $HOME/Library"
alias cdd="cd ~/Desktop"
alias cdh="cd ~/"
alias cdw="cd ~/Products"
alias cdp="cd ~/Products"
alias cdderiveddata="cd ~/Library/Developer/Xcode/DerivedData"

# Tools
alias sublime="subl"

# Functions
function touchbash {
	if [ "$#" -ne 1 ]; then
		echo "Usage: touchbash file"
	else
		echo '#!/bin/bash' > $1
	fi
}

function touchruby {
	if [ "$#" -ne 1 ]; then
		echo "Usage: touchruby file"
	else
		echo '#!/usr/bin/ruby' > $1
	fi
}
