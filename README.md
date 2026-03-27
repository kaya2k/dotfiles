# dotfiles

```bash
#!/bin/sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask font-roboto-mono-nerd-font kitty mactex-no-gui
brew install eza fish fzf git lazygit neovim ripgrep tmux tree-sitter-cli yazi zoxide
brew install stylua pyright black texlab latexindent
git clone git@github.com:kaya2k/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./install.sh
```
