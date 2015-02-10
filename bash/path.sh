# Add "rooty" paths to make sure apt-get et al play nice with sudo
PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin

# I tend to keep locally compiled software in /opt
if [ -d "/opt/bin" ]
then
    PATH="/opt/bin:$PATH"
    MANPATH="/opt/share/man:$MANPATH"
fi

# We may have the MacOS X MySQL packages installed.
if [ -d "/usr/local/mysql/bin" ]; then
    PATH="/usr/local/mysql/bin:$PATH"
    MANPATH="/usr/local/mysql/man:$MANPATH"
fi

# Add ~/bin if it exists
if [ -d "$HOME/bin" ]
then
    PATH="$HOME/bin:$PATH"
fi

# Add Composer global bin, for packages that were added using
# `composer global require 'vendor/package=version'`.
if [ -d "$HOME/.composer/vendor/bin" ]
then
    PATH="$HOME/.composer/vendor/bin:$PATH"
fi
