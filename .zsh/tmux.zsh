# Open the sesh picker when a terminal starts outside tmux (Esc stays in a plain shell)
if [[ -o interactive && -z "$TMUX" && -t 0 && -t 1 ]]; then
    sesh_session=$(sesh list --icons | fzf --ansi --no-multi --no-sort --layout=reverse --border-label ' sesh ' --prompt 'session > ')
    [ -n "$sesh_session" ] && sesh connect "$sesh_session"
    unset sesh_session
fi
