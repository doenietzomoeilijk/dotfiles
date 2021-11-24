# Glorious dotfiles!

Everything works with [Stow](https://www.gnu.org/software/stow/) now. Checkout
this repo to `~/dotfiles` (or whatever works, as long as it's directly under
`$HOME`), enter the directory, and use `stow <package>`, where `package` is one
of the subdirectories. So for example `stow zsh` properly symlinks everything up
for ZSH.

## Requirements

* zsh & [oh-my-zsh](https://ohmyz.sh/)
* i3-gaps
* polybar
* dunst
* picom
* alacritty
