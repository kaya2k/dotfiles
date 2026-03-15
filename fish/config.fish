# Aliases
alias ls="ls -lh"
alias vim="nvim"
alias g="lazygit"
alias o="open ."

# Yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Processing
function prun
    processing-java --sketch=(pwd) --run
end


# Appearance
set -g fish_color_command --bold

# Environment Variables
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx PATH "$HOME/.local/bin" $PATH
set -gx EDITOR nvim

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
