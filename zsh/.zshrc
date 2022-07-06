export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="blinks"
CASE_SENSITIVE="false"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git docker docker-compose sudo tmux)

source $ZSH/oh-my-zsh.sh

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/powerline/zsh/powerline.zsh ] && . /usr/share/powerline/zsh/powerline.zsh
[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GOPATH=$HOME/go
export PATH=$HOME/.local/bin:$HOME/.local/share/JetBrains/Toolbox/bin:$GOPATH/bin:/opt/bin:$PATH
export XDG_DATA_DIRS=~/.local/share/applications:$XDG_DATA_DIRS

export SYMFONY_ENV=dev
export VISUAL=/usr/bin/vim
export EDITOR=$VISUAL

[ -d "$HOME/perl5/bin" ] && {
    export PATH="$HOME/perl5/bin${PATH:+:${PATH}}"
    export PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
    export PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
    export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"
    export PERL_MB_OPT="--install_base \"$HOME/perl5\""
}

which thefuck > /dev/null
rc=$?; [[ $rc == 0 ]] && eval $(thefuck --alias)

autoload bashcompinit
bashcompinit
eval "$(register-python-argcomplete pmbootstrap)"
