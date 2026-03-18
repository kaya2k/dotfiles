# dotfiles

A collection of personal config files.

```bash
#!/bin/sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask font-roboto-mono-nerd-font kitty
brew install eza fish fzf git lazygit neovim ripgrep tmux tree-sitter-cli yazi zoxide
git clone git@github.com:kaya2k/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./install.sh
```
