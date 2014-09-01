# @gf3’s Sexy Bash Prompt, inspired by “Extravagant Zsh Prompt”
# Shamelessly copied from https://github.com/gf3/dotfiles
# Screenshot: http://i.imgur.com/s0Blh.png

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
        MAGENTA=$(tput setaf 9)
        ORANGE=$(tput setaf 172)
        GREEN=$(tput setaf 190)
        PURPLE=$(tput setaf 141)
        WHITE=$(tput setaf 0)
    else
        MAGENTA=$(tput setaf 5)
        ORANGE=$(tput setaf 4)
        GREEN=$(tput setaf 2)
        PURPLE=$(tput setaf 1)
        WHITE=$(tput setaf 7)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi

export MAGENTA
export ORANGE
export GREEN
export PURPLE
export WHITE
export BOLD
export RESET

function parse_git_dirty() {
    [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}

function parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

function get_last_exit() {
    local EXITCODE="$?"
    local EXIT=""

    echo "pre:${EXITCODE}:"
    if [[ $EXITCODE != 0 ]]; then
        EXIT=""
    else
        EXIT=$EXITCODE
    fi

    echo -n "-${EXIT}-"
}

# Nu in __prompt_command
# export PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]/ \[$ORANGE\]\h \[$WHITE\]/ \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" / \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n\$(get_last_exit)\$ \[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"

function __prompt_command() {
    local EXIT="$?"             # This needs to be first
    PS1=""

    PS1+="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]/ \[$ORANGE\]\h \[$WHITE\]/ \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" / \")\[$PURPLE\]\$(parse_git_branch)\n"

    if [ $EXIT != 0 ]; then
        PS1+="\[${MAGENTA}\][${EXIT}]\[${WHITE}\] "      # Add red if exit code non 0
    fi

    PS1+="\[${WHITE}\]\$ \[$RESET\]"
}
export PROMPT_COMMAND=__prompt_command
