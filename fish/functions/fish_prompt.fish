function fish_prompt
    set -l left (get_left_prompt)  
    set -l right (get_right_prompt) 
    set -l padding (get_padding (math $COLUMNS - (remove_color "$left$right" | string length)))
    printf "\n$left$padding$right\n"
    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end

function get_right_prompt
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    test $git_branch
        and printf (set_color blue --bold)" ($git_branch) "
end

function get_left_prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname)
    end
    # and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
        and printf (set_color green)"[$__fish_prompt_hostname] "
    printf (set_color red --bold)$USER' '
    test $USER = 'root'
        and echo (set_color red)"#"
    echo -n (set_color cyan)(prompt_pwd)' '
    # Main
end

function get_padding
    set -l space ""
    for i in (seq 1 $argv[1])
        set space " "$space
    end
    printf $space
    set_color normal
end

function remove_color
    printf $argv | perl -pe 's/\x1b.*?[mGKH]//g'
end
