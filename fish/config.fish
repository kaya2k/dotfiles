# Abbrs
abbr r "source ~/.config/fish/config.fish"
abbr g "lazygit"
abbr y "yazi"
abbr t "tmux new-session -A -s home"
abbr vim "nvim"
abbr prun "processing-java --sketch=(pwd) --run"

## Aliases
alias ls "eza --long --no-permissions --no-time --octal-permissions --group --sort=type"

# Appearance
set -g fish_color_command --bold

# Environment Variables
set -gx EDITOR nvim
set -gx PATH "$HOME/.local/bin" $PATH
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx EZA_CONFIG_DIR "$HOME/.config/eza"

# Zoxide(z) Setup
zoxide init fish | source
