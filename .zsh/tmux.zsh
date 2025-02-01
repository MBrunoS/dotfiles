randomize_session_names() {
    # Define session names, each on a new line for clarity
    session_names=(
        "amaterasu"
        "anubis"
        "apollo"
        "ares"
        "athena"
        "fenrir"
        "freyja"
        "freyr"
        "frigg"
        "hades"
        "hermes"
        "izanagi"
        "izanami"
        "kagutsuchi"
        "loki"
        "odin"
        "osiris"
        "poseidon"
        "susanoo"
        "thor"
        "tsukuyomi"
        "wukong"
        "zeus"
    )

    # Print the session names, pipe them to `sort -R` to randomize, then print the randomized list
    printf "%s\n" "${session_names[@]}" | sort -R
}

# Checks if tmux is installed, if not, install it
if [ ! -f $BREW_PREFIX/bin/tmux ]; then
    echo "Installing Tmux..."
    $BREW_PREFIX/bin/brew install tmux
fi

# Start tmux if not already running
if [ -n "$PS1" ] && [ -z "$TMUX" ]; then
    for name in $(randomize_session_names); do
        echo $name
        # Check if the session name is already in use
        if ! tmux has-session -t $name 2>/dev/null; then
            # Create a new session with the name
            tmux new-session -d -s $name
            # Attach to the session
            tmux attach-session -t $name
            # Break the loop
            break
        fi
    done
fi
