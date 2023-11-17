if status is-interactive
    if not set -q TMUX
        if tmux list-sessions &>/dev/null
            set -l array_unattached

            for i in (tmux list-sessions -F "#{session_attached} #{session_name} \"#{session_path}\"")
                if test (echo $i | cut -d' ' -f1) -eq 0
                    set -a  array_unattached (echo $i | cut --complement -d ' ' -f 1)
                end
            end

            if set -q array_unattached[1]
                set -l selection (printf '%s\n' $array_unattached | rofi -dmenu -p "Select tmux session")
                if test $status -eq 0
                    set -l session_name (echo $selection | cut -d ' ' -f 1)
                    tmux send-keys -t $session_name:1.1 "^C"
                    tmux send-keys -t $session_name:1.1 "cd $PWD &> /dev/null" ENTER
                    tmux attach-session -t $session_name:1.1
                else
                    tmux new-session -c $PWD
                end
            end
        else
            tmux new-session -c $PWD
        end
    end
end
