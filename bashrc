#!/bin/bash

# Only run stuff once.
# [ -z "$RAN_BASHRC" ] && return # Disable for testing
RAN_BASHRC=1

# Get my current run path, used for grabbing the rest of the files from the Git
# repo.
DOTFILES_PATH="`( cd \"$DOTFILES_PATH\" && pwd  )`"  # absolutized and normalized
if [ -z "$DOTFILES_PATH"  ] ; then
    # error; for some reason, the path is not accessible
    # to the script (e.g. permissions re-evaled after suid)
    exit 1  # fail
fi


. "$DOTFILES_PATH/bash/prompt.sh"
. "$DOTFILES_PATH/bash/editor.sh"
. "$DOTFILES_PATH/bash/path.sh"
