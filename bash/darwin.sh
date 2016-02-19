# Homebrew support
if [ -f "/usr/local/bin/brew" ]; then
	export PATH=/usr/local/bin:$PATH
    BREWPREFIX=$(brew --prefix)

    if [ -f "$BREWPREFIX/share/bash-completion/bash_completion" ]; then
        . "$BREWPREFIX/share/bash-completion/bash_completion"
    fi
fi

if [ -d "/usr/local/opt/coreutils/libexec/gnubin" ]; then
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

if [ -d "/usr/local/opt/php55/bin" ]; then
    export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
fi

alias ls='ls -GF'
