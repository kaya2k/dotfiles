function fish_greeting
    set sessions (tmux ls 2>/dev/null)

    if test $status -ne 0
        set_color brblack
        echo "no tmux sessions"
        set_color normal
        return
    end

    for session in $sessions
        set name    (string match -r '^([^:]+)' $session)[2]
        set created (string match -r 'created (.+?)\)' $session)[2]
        if string match -q '*attached*' $session
            set_color green
        else
            set_color brblack
        end
        printf "%s " $name
        set_color brblack
        printf "created %s\n" $created
        set_color normal
    end
end
