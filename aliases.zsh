# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadzsh="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias weather="curl -4 http://wttr.in"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias flushdns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"
alias restartsshagent="killall ssh-agent; eval `ssh-agent`"

# Directories
alias cddotfiles="cd $DOTFILES"
alias cdl="cd $HOME/Library"
alias cdd="cd ~/Desktop"
alias cdh="cd ~/"
alias cdw="cd ~/Products"
alias cdp="cd ~/Products"
alias cdderiveddata="cd ~/Library/Developer/Xcode/DerivedData"

# Custom directories
alias cdwvp="cd ~/Products/iOS-vente-privee"

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

function mitmproxyenableandrun {
	echo "Enabling WI-FI web proxy and secure web proxy"
	networksetup -setwebproxystate wi-fi on
	networksetup -setsecurewebproxystate wi-fi on
	echo "Starting mitmproxy"
	mitmproxy
}

function mitmproxydisable {
	echo "Disabling WI-FI web proxy and secure web proxy"
	networksetup -setwebproxystate wi-fi off
	networksetup -setsecurewebproxystate wi-fi off
}

function mitmproxyconfiguresimulator {
	if [ "$#" -ne 1 ]; then
		echo "Usage: mitmproxyconfiguresimulator <ADVTrustStore location>"
	else
		cd $1
		./iosCertTrustManager.py -a ~/.mitmproxy/mitmproxy-ca-cert.pem
		cd -
	fi
}

function recordiOSsimulator {
	if [ "$#" -ne 1 ]; then
		echo "Usage: recordiOSsimulator <target path to mp4 file>"
	else
		xcrun simctl io booted recordVideo --type=mp4 $1
	fi
}
