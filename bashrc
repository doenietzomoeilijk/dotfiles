#!/bin/bash

# Only run stuff once.
# [ -z "$RAN_BASHRC" ] && return # Disable for testing
RAN_BASHRC=1

# Get my current run path, used for grabbing the rest of the files from the Git
# repo.
# DOTFILES_PATH="`dirname \"$0\"`"
DOTFILES_PATH="/home/max/git/dotfiles"
DOTFILES_PATH="`( cd \"$DOTFILES_PATH\" && pwd  )`"  # absolutized and normalized
if [ -z "$DOTFILES_PATH"  ] ; then
    # error; for some reason, the path is not accessible
    # to the script (e.g. permissions re-evaled after suid)
    exit 1  # fail
fi

echo "Adding Prompt..."
. "$DOTFILES_PATH/bash/prompt.sh"
echo "Adding Editor"
. "$DOTFILES_PATH/bash/editor.sh"
echo "Setting History..."
. "$DOTFILES_PATH/bash/history.sh"
echo "Setting Aliases"
. "$DOTFILES_PATH/bash/aliases.sh"
echo "Adding Paths"
. "$DOTFILES_PATH/bash/path.sh"

echo
RC=~/.bashrc
echo "RC1=$RC"
RC=`dirname $RC`
echo "RC2=$RC"
RC=`(cd $RC && pwd)`
echo "RC3=$RC"

