directory() {
    echo "%~ "
}

status_symbol() {
    echo "%B%n%b "
}

status_ok() {
    echo "%F{green}$(status_symbol)%f"
}

status_err() {
    echo "%F{red}$(status_symbol)%f"
}

return_status() {
    echo "%(?:$(status_ok):$(status_err))"
}

prompt_indicator() {
    indicator="$"
    echo "$indicator "
}

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(return_status)$(directory)$(git_prompt_info)$(prompt_indicator)'
RPROMPT=''

