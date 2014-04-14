# Add MacPorts paths if we have it.
if [ -f "/opt/local/bin/port" ]
then
    export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/opt/local/apache2/bin:$PATH
    export MANPATH=/opt/local/share/man:$MANPATH
fi

if [ -f "/opt/local/etc/profile.d/bash_completion.sh" ]
then
	. /opt/local/etc/profile.d/bash_completion.sh
fi

alias ls='ls -GF'
