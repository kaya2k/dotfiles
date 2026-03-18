# Abbrs
abbr r "source ~/.config/fish/config.fish"
abbr c "cd"
abbr g "lazygit"
abbr y "yazi"
abbr vim "nvim"
abbr prun "processing-java --sketch=(pwd) --run"
alias ls "eza --long --no-permissions --octal-permissions --group --no-time --sort=type"

# Appearance
set -g fish_color_command --bold

# Environment Variables
set -gx EDITOR nvim
set -gx PATH "$HOME/.local/bin" $PATH
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx EZA_CONFIG_DIR "$HOME/.config/eza"

# Zoxide(z) Setup
zoxide init fish | source

# Automatic Attach to TMUX Session
if status is-interactive
    if not set -q TMUX
        if tmux has-session -t home 2>/dev/null
            exec tmux attach-session -t home
        else
            exec tmux new-session -s home
        end
    end
end
