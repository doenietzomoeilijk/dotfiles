# Add MacPorts paths if we have it.
if [ -f "/opt/local/bin/port" ]
then
    export PATH="~/bin:/opt/local/bin:/opt/local/sbin:/opt/local/apache2/bin:$PATH"
    export MANPATH="/opt/local/share/man:$MANPATH"
fi

if [ -f "/opt/local/etc/profile.d/bash_completion.sh" ]
then
	. /opt/local/etc/profile.d/bash_completion.sh
fi

# Homebrew support
if [ -f "/usr/local/bin/brew" ]
then
	export PATH=/usr/local/bin:$PATH
fi

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]
then
	. $(brew --prefix)/share/bash-completion/bash_completion
fi

if [ -d "/usr/local/opt/coreutils/libexec/gnubin" ]
then
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

if [ -d "/usr/local/opt/php55/bin" ]
then
    export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
fi

# Set up mvi alias if we have MacVim installed -- allows you to easily open
# stuff from the command line without spawning a million windows.
if [ -d "/Applications/MacVim.app" ]
then
    alias mvi='open -a /Applications/MacVim.app/'
fi

alias ls='ls -GF'
