#!/bin/bash

# Interactive only
[ -z "$PS1" ] && return

# Only run stuff once.
[ -z "$RAN_BASHRC" ] && return # Disable for testing
RAN_BASHRC=1

# Get my current run path, used for grabbing the rest of the files from the Git
# repo.
# DOTFILES_PATH="`dirname \"$0\"`"
DOTFILES_PATH=`readlink ~/.bashrc`
DOTFILES_PATH=`dirname $DOTFILES_PATH`
if [ -z "$DOTFILES_PATH"  ]
then
    # For some reason, the path is not accessible to the script (e.g.
    # permissions re-evaled after suid)
    exit 1
fi

. "$DOTFILES_PATH/bash/prompt.sh"
. "$DOTFILES_PATH/bash/editor.sh"
. "$DOTFILES_PATH/bash/history.sh"
. "$DOTFILES_PATH/bash/aliases.sh"
. "$DOTFILES_PATH/bash/path.sh"

shopt -s nocaseglob

if [[ $OSTYPE == darwin* ]]
then
    . "$DOTFILES_PATH/bash/darwin.sh"
fi
