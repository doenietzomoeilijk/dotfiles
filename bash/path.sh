# Add "rooty" paths to make sure apt-get et al play nice with sudo
PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin

# I tend to keep locally compiled software in /opt
if [ -d "/opt/bin" ]
then
    PATH="/opt/bin:$PATH"
    MANPATH="/opt/share/man:$MANPATH"
fi

# Add ~/bin if it exists
if [ -d "$HOME/bin" ]
then
    PATH="$HOME/bin:$PATH"
fi
