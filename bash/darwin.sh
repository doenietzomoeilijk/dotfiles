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

alias ls='ls -GF'
