#!/bin/sh

DOTFILES=~/.dotfiles

setup() {
    name=$1
    target=$2
    source=$DOTFILES/$3
    echo "Setting up $name..."
    rm -rf $target
    mkdir -p $(dirname $target)
    ln -s $source $target
}

touch ~/.hushlogin
setup "eza"      ~/.config/eza                               eza
setup "fish"     ~/.config/fish/config.fish                  fish/config.fish
setup "prompt"   ~/.config/fish/functions/fish_prompt.fish   fish/fish_prompt.fish
setup "greeting" ~/.config/fish/functions/fish_greeting.fish fish/fish_greeting.fish
setup "git"      ~/.gitconfig                                git/gitconfig
setup "kitty"    ~/.config/kitty                             kitty
setup "lazygit"  ~/.config/lazygit                           lazygit
setup "nvim"     ~/.config/nvim                              nvim
setup "tmux"     ~/.config/tmux/tmux.conf                    tmux/tmux.conf
setup "yazi"     ~/.config/yazi                              yazi
