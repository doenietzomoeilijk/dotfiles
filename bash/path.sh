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
