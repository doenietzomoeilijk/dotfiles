# Add MacPorts paths if we have it.
if [ -f "/opt/local/bin/port" ]
then
    export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/opt/local/apache2/bin:$PATH
    export MANPATH=/opt/local/share/man:$MANPATH
fi

if [ -f "/opt/local/etc/bash_completion" ]
then
	. /opt/local/etc/bash_completion
fi

alias ls='ls -GF'
