function fish_prompt
    set -l last_status $status
    set -l hdr (set_color --bold green)
    if test $last_status -ne 0
        set hdr (set_color --bold red)
    end

    set -l pwd (prompt_pwd)
    if test $pwd = "~"
        set pwd "HOME"
    end

    set -l normal (set_color normal)
    echo -n -s \
        $hdr $USER \
        $normal " at " $hdr (prompt_hostname) \
        $normal " in " $hdr $pwd \
        $normal (fish_vcs_prompt) \
        $normal ": "
end
