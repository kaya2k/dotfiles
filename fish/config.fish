# Abbrs
abbr c "clear"
abbr g "lazygit"
abbr r "source ~/.config/fish/config.fish"
abbr t "tmux new-session -A -s"
abbr tl "fish_greeting"
abbr v "uv run nvim"
abbr y "yazi"
abbr prun "processing-java --sketch=(pwd) --run"

# Eza
alias ls "eza --long --no-permissions --no-time --octal-permissions --group --sort=type"
abbr lsa "ls --all"
abbr lst "ls --tree --git-ignore"

# Appearance
set -g fish_color_command --bold

# Environment Variables
set -gx EDITOR nvim
set -gx PATH "$HOME/.local/bin" $PATH
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx EZA_CONFIG_DIR "$HOME/.config/eza"

# Zoxide(z) Setup
zoxide init fish | source
