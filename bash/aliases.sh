alias ls='ls --color=auto --group-directories-first -F'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Fix for irssi within tmux
if [[ -n "$TMUX" ]]
then
    alias irssi='TERM=screen-256color irssi'
fi
