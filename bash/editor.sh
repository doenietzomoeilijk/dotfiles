if [ -f "/opt/bin/vim" ] ; then
    VISUAL="/opt/bin/vim"
else
    VISUAL="/usr/bin/vim"
fi

export VISUAL
export EDITOR=$VISUAL
